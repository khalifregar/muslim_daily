import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/quotes_card.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_bloc/surah_bloc.dart' as bloc;
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_cubit/surah_cubit.dart' as cubit;
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah.dart';
import 'package:muslim_daily/widgets/header_card/header_card.dart';
import 'package:muslim_daily/injection.dart';

class MenuAlquranPage extends StatelessWidget {
  const MenuAlquranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<cubit.SurahCubit>()..getSurah()),
          BlocProvider(create: (context) => getIt<bloc.SurahBloc>()..add(const bloc.SurahEvent.getSurah())),
        ],
        child: BlocListener<cubit.SurahCubit, cubit.SurahState>(
          listener: (context, state) {
            state.maybeWhen(
              loadSuccess: (surahList) {
                context.read<bloc.SurahBloc>().add(bloc.SurahEvent.getSurah());
              },
              orElse: () {},
            );
          },
          child: Stack(
            children: [
              Column(
                children: [
                  const CustomHeader(
                    title: "Yuk, mulai baca Qur'an",
                    backgroundImage: "assets/images/alquran_image.jpg",
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  // 📌 Input Pencarian Surah
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: TextField(
                      onChanged: (query) {
                        context.read<bloc.SurahBloc>().add(bloc.SurahEvent.searchSurah(query));
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                        hintText: "Cari Surah...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 📌 Daftar Surah Langsung Ditampilkan dari API
                  Expanded(
                    child: BlocBuilder<cubit.SurahCubit, cubit.SurahState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loadInProgress: () => const Center(child: CircularProgressIndicator()),
                          loadFailure: (failure) => Center(child: Text("Error: ${failure.message}")),
                          loadSuccess: (surahList) {
                            return BlocBuilder<bloc.SurahBloc, bloc.SurahState>(
                              builder: (context, searchState) {
                                return searchState.maybeWhen(
                                  loadSuccess: (filteredList, _, __) {
                                    final safeList = filteredList ?? [];

                                    if (safeList.isEmpty) {
                                      return const Center(child: Text("Tidak ada Surah ditemukan"));
                                    }

                                    // 📌 Menampilkan data dari API secara langsung
                                    return ListView.builder(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      itemCount: safeList.length,
                                      itemBuilder: (context, index) {
                                        final surah = safeList[index];

                                        return Card(
                                          margin: const EdgeInsets.symmetric(vertical: 8),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${surah.nomor}. ${surah.namaLatin}",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  "Jumlah Ayat: ${surah.jumlahAyat}",
                                                  style: const TextStyle(fontSize: 14),
                                                ),
                                                Text(
                                                  "Arti: ${surah.arti}",
                                                  style: const TextStyle(fontSize: 14),
                                                ),
                                                Text(
                                                  "Tempat Turun: ${surah.tempatTurun}",
                                                  style: const TextStyle(fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  orElse: () => const Center(child: Text("Belum ada data")),
                                );
                              },
                            );
                          },
                          orElse: () => const Center(child: Text("Mulai memuat data...")),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // 📌 Quotes Card
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                left: 5,
                right: 5,
                child: const QuotesCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
