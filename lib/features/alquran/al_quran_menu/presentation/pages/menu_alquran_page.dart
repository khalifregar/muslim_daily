import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/quotes_card.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/search_page.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/surah_list_item.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_bloc/surah_bloc.dart'
    as bloc;
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_cubit/surah_cubit.dart'
    as cubit;
import 'package:muslim_daily/widgets/header_card/header_card.dart';
import 'package:muslim_daily/injection.dart';

class MenuAlquranPage extends StatefulWidget {
  const MenuAlquranPage({super.key});

  @override
  _MenuAlquranPageState createState() => _MenuAlquranPageState();
}

class _MenuAlquranPageState extends State<MenuAlquranPage> {
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<dynamic>> filteredSurahList = ValueNotifier([]);
  List<dynamic> allSurahList = [];

  Timer? _debounce;
  final _cubit = getIt<cubit.SurahCubit>(); // ✅ Pakai instance singleton

  @override
  void initState() {
    super.initState();
    _cubit.getSurah(); // ✅ Panggil API jika belum pernah dipanggil
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    filteredSurahList.dispose();
    super.dispose();
  }

  void _setAllSurah(List<dynamic> surahList) {
    if (allSurahList.isEmpty && surahList.isNotEmpty) {
      allSurahList = surahList;
      filteredSurahList.value = surahList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: _cubit),
          BlocProvider(create: (_) => getIt<bloc.SurahBloc>()),
        ],
        child: BlocConsumer<cubit.SurahCubit, cubit.SurahState>(
          listener: (context, state) {
            state.maybeWhen(
              loadSuccess: (surahList) {
                if (surahList != null) _setAllSurah(surahList);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loadInProgress: () => true,
              orElse: () => false,
            );

            // ✅ Tambahkan pengecekan agar data langsung terisi meskipun listener tidak terpanggil
            state.maybeWhen(
              loadSuccess: (surahList) {
                if (surahList != null && allSurahList.isEmpty) {
                  _setAllSurah(surahList);
                }
              },
              orElse: () {},
            );

            return Stack(
              children: [
                Column(
                  children: [
                    const CustomHeader(
                      title: "Yuk, mulai baca Qur'an",
                      backgroundImage: "assets/images/alquran_image.jpg",
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => BlocProvider.value(
                                value: context.read<cubit.SurahCubit>(),
                                child: const SearchPage(),
                              ),
                            ),
                          );
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.search, color: Colors.grey),
                              hintText: "Cari Surah...",
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade300),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Expanded(
                      child: isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : ValueListenableBuilder<List<dynamic>>(
                              valueListenable: filteredSurahList,
                              builder: (context, list, _) {
                                if (list.isEmpty) {
                                  return const Center(
                                      child: Text("Tidak ada Surah ditemukan"));
                                }
                                return ListView.separated(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  itemCount: list.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 8),
                                  itemBuilder: (context, index) {
                                    return SurahListItem(surah: list[index]);
                                  },
                                );
                              },
                            ),
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: 5,
                  right: 5,
                  child: const QuotesCard(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
