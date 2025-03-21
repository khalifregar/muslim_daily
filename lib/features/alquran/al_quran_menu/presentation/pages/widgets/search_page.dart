import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/search_result_box.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_cubit/surah_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<dynamic>> filteredSurahList = ValueNotifier([]);
  final ValueNotifier<List<String>> searchHistory = ValueNotifier([]);
  List<dynamic> allSurahList = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _loadSearchHistory();

    final cubitState = context.read<SurahCubit>().state;
    cubitState.maybeWhen(
      loadSuccess: (surahList) {
        if (surahList != null) {
          allSurahList = surahList;
        }
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    filteredSurahList.dispose();
    searchHistory.dispose();
    super.dispose();
  }

  Future<void> _loadSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList('search_history') ?? [];
    searchHistory.value = history;
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isEmpty) {
        filteredSurahList.value = [];
      } else {
        filteredSurahList.value = allSurahList
            .where((surah) =>
                (surah.namaLatin?.toLowerCase() ?? '').contains(query.toLowerCase()) ||
                (surah.arti?.toLowerCase() ?? '').contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<SurahCubit, SurahState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loadInProgress: () => true,
            orElse: () => false,
          );

          if (isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              // 🔹 Header
              Stack(
                children: [
                  // Background header
                  Container(
                    height: 220.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/alquran_image.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5.r,
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _searchController,
                            onChanged: _onSearchChanged,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20.sp),
                              hintText: "Cari Surah...",
                              hintStyle: TextStyle(fontSize: 16.sp),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50.h,
                    left: 16.w,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white, size: 24.sp),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              // 🔹 Hasil Pencarian
              Expanded(
                child: ValueListenableBuilder<List<dynamic>>(
                  valueListenable: filteredSurahList,
                  builder: (context, list, _) {
                    return SearchResultBox(
                      results: list,
                      onShowMore: () {},
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
