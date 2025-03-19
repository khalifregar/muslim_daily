import 'package:flutter/material.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/surah_card/surah_ayah.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/tafsir_card/card_tafsir.dart';
import 'package:muslim_daily/widgets/header_card/header_card.dart';

class SurahPageRead extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const SurahPageRead({
    Key? key,
    required this.surahData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // ✅ Offset untuk menaikkan/mengatur posisi elemen
    final double tafsirOffset = -screenHeight * 0.13;
    final double ayahOffset = -screenHeight * 0.05;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down, // Highlight muncul saat scroll ke bawah
        color: Colors.greenAccent, // Warna highlight
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(), // Mencegah scroll buka ruang kosong di atas
          child: Column(
            children: [
              // ✅ CustomHeader tetap di atas
              SizedBox(
                height: screenHeight * 0.30, // Tetapkan tinggi agar tidak berubah
                child: CustomHeader(
                  title: surahData["Surah Name"],
                  backgroundImage: "assets/images/onboarding.jpg",
                ),
              ),

              // ✅ `CardTafsir` ditarik ke atas agar lebih dekat ke Header
              Transform.translate(
                offset: Offset(0, tafsirOffset),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: CardTafsir(surahName: surahData["Surah Name"]),
                ),
              ),

              // ✅ `CardAyah` bisa diatur naik/turun dengan `Transform.translate`
              Transform.translate(
                offset: Offset(0, ayahOffset),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03, vertical: screenHeight * 0.01),
                  child: Column(
                    children: List.generate(
                      surahData["Verse List"].length,
                      (index) {
                        final ayat = surahData["Verse List"][index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: screenHeight * 0.01),
                          child: CardAyah(ayatData: ayat),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
