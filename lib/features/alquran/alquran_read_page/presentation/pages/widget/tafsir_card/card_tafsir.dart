import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/tafsir_card/tafsir_list.dart';

class CardTafsir extends StatelessWidget {
  final String surahName;

  const CardTafsir({Key? key, required this.surahName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ambil tafsir berdasarkan surah yang diklik
    final tafsir = tafsirList[surahName] ?? "Tafsir belum tersedia.";

    // Ambil hanya sebagian kecil dari tafsir (dibatasi 3-4 baris)
    final shortTafsir = tafsir.length > 120 ? "${tafsir.substring(0, 120)}..." : tafsir;

    return Container(
      margin: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Colors.white,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10.r,
            spreadRadius: 2.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Tafsir
                Text(
                  "📖 Tafsir $surahName",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),

                // Isi Tafsir (Singkat)
                Text(
                  shortTafsir,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          // 📌 Tombol 'Lihat Selengkapnya' menempel di bagian bawah card
          Positioned(
            bottom: -30.h, // Setengah menempel keluar dari card
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                ),
                onPressed: () {
                  context.push('/tafsir-page', extra: {
                    "surahName": surahName,
                    "tafsir": tafsirList[surahName] ?? "Tafsir tidak tersedia.",
                  });
                },
                child: Text(
                  "Lihat Selengkapnya",
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
