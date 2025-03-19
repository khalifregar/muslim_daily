import 'package:flutter/material.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/quotes_card.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/alquran_page.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/widget/surah_card/surah_data.dart';
import 'package:muslim_daily/widgets/header_card/header_card.dart';

class MenuAlquranPage extends StatelessWidget {
  const MenuAlquranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              const CustomHeader(
                title: "Yuk, mulai baca Qur'an",
                backgroundImage: "assets/images/alquran_image.jpg",
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
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
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: surahList.length,
                  itemBuilder: (context, index) {
                    return SurahItem(surahData: surahList[index]);
                  },
                ),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 5,
            right: 5,
            child: const QuotesCard(),
          ),
        ],
      ),
    );
  }
}
