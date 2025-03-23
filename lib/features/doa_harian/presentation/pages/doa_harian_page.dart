import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/features/doa_harian/presentation/widgets/doa_card.dart';
import 'package:muslim_daily/features/doa_harian/presentation/widgets/kategori_doa_list.dart';
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_bloc/doa_harian_bloc.dart';
import 'package:muslim_daily/locator.dart';

class DoaHarianPage extends StatefulWidget {
  const DoaHarianPage({super.key});

  @override
  State<DoaHarianPage> createState() => _DoaHarianPageState();
}

class _DoaHarianPageState extends State<DoaHarianPage> {
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DoaHarianBloc>(
      create: (_) => locator<DoaHarianBloc>()..add(const DoaHarianEvent.getDoaHarian()),
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Kumpulan Doa",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black87),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔍 Search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Material(
                elevation: 2,
                shadowColor: Colors.black12,
                borderRadius: BorderRadius.circular(12.r),
                child: TextField(
                  onChanged: (query) {
                    context.read<DoaHarianBloc>().add(DoaHarianEvent.searchDoaHarian(query));
                  },
                  decoration: InputDecoration(
                    hintText: "Cari doa...",
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r), borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                  ),
                ),
              ),
            ),

            // 🏷️ Kategori sumber
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Builder(
                builder: (context) => KategoriDoaList(
                  selectedCategory: selectedCategory,
                  onSelected: (newCategory) {
                    setState(() {
                      selectedCategory = newCategory;
                    });
                    context.read<DoaHarianBloc>().add(
                          DoaHarianEvent.searchDoaHarian(newCategory ?? ''),
                        );
                  },
                ),
              ),
            ),

            // 📜 Daftar Doa
            Expanded(
              child: BlocBuilder<DoaHarianBloc, DoaHarianState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loadSuccess: (list, filtered, query) {
                      final safeList = filtered ?? [];
                      return ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                        itemCount: safeList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          final doa = safeList[index];
                          return DoaCard(
                            title: doa.judul ?? '-',
                            arab: doa.arab ?? '-',
                            latin: doa.indo ?? '-',
                          );
                        },
                      );
                    },
                    loadInProgress: () => const Center(child: CircularProgressIndicator()),
                    loadFailure: (f) => Center(
                      child: Text("Gagal memuat: ${f?.message ?? 'Unknown error'}"),
                    ),
                    orElse: () => const Center(child: Text("Tidak ada data")),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
