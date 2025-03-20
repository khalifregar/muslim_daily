import 'package:flutter/material.dart';

class SurahCard extends StatelessWidget {
  final String surahName;
  final String ayatCount;
  final String revelationType;
  final String imagePath; // Tambahkan path gambar

  const SurahCard({
    Key? key,
    required this.surahName,
    required this.ayatCount,
    required this.revelationType,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
      child: Container(
        height: 80, // Memberikan tinggi tetap agar layout stabil
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white, // Warna latar belakang agar lebih mirip dengan UI
        ),
        child: Row(
          children: [
            // 📌 Bagian kiri: Gambar Surah
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),

            // 📌 Bagian tengah: Detail Surah dan Jenis Wahyu (sejajar)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Nama Surah
                        Text(
                          surahName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        // Jenis Wahyu (Madinah/Makkah)
                        Text(
                          revelationType,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      ayatCount,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
