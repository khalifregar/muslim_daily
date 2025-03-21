import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurahPageRead extends StatelessWidget {
  final dynamic surah;

  const SurahPageRead({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          surah.namaLatin ?? "Surah",
          style: TextStyle(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ Header abu-abu di atas (Tanpa Box Putih Lagi)
            Container(
              height: 250.h, // **Header lebih tinggi**
              width: double.infinity,
              color: Colors.grey[300], // **Warna background header**
            ),

            // ✅ Spasi setelah header
            SizedBox(height: 20.h),

            // ✅ Ayat dari Surah
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),

                  SizedBox(height: 500.h), // **Tambahkan konten panjang untuk uji scroll**
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
