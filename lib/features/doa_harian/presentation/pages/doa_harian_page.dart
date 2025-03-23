import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_daily/locator.dart';
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_bloc/doa_harian_bloc.dart';

class DoaHarianPage extends StatelessWidget {
  const DoaHarianPage({super.key});

  final List<String> _kategoriDoa = const [
    "Doa Harian",
    "Doa Sholat",
    "Doa Wajib",
    "Doa Wudhu",
    "Doa Tidur",
    "Doa Masuk Rumah",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DoaHarianBloc>(
      create: (_) => locator<DoaHarianBloc>()..add(const DoaHarianEvent.getDoaHarian()),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(
              "Kumpulan Doa",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Search Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: TextField(
                  onChanged: (query) => context.read<DoaHarianBloc>().add(
                        DoaHarianEvent.searchDoaHarian(query),
                      ),
                  decoration: InputDecoration(
                    hintText: "Cari doa...",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ),

              /// Kategori horizontal
              SizedBox(
                height: 75.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: _kategoriDoa.length,
                  separatorBuilder: (_, __) => SizedBox(width: 12.w),
                  itemBuilder: (context, index) {
                    return KategoriDoaCard(label: _kategoriDoa[index]);
                  },
                ),
              ),

              /// BlocBuilder to show filtered Doa list
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
                              arti: doa.source ?? '-',
                            );
                          },
                        );
                      },
                      loadInProgress: () => const Center(child: CircularProgressIndicator()),
                      loadFailure: (f) => Center(
                        child: Text("Gagal memuat: \${f?.message ?? 'Unknown error'}"),
                      ),
                      orElse: () => const Center(child: Text("Tidak ada data")),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KategoriDoaCard extends StatelessWidget {
  final String label;

  const KategoriDoaCard({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFF00966C),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DoaCard extends StatelessWidget {
  final String title;
  final String arab;
  final String latin;
  final String arti;

  const DoaCard({
    super.key,
    required this.title,
    required this.arab,
    required this.latin,
    required this.arti,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            arab,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            latin,
            style: TextStyle(
              fontSize: 14.sp,
              fontStyle: FontStyle.italic,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            arti,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}