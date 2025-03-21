import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';

class SurahListItem extends StatelessWidget {
  final dynamic surah;

  const SurahListItem({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    final List<Color> gradientColors = [
      const Color(0xFF26CE96),
      const Color(0xFF3B82F6),
      const Color(0xFF8B5CF6),
      const Color(0xFFF59E0B),
    ];
    final Color selectedColor = gradientColors[surah.nomor % gradientColors.length];

    return GestureDetector(
      onTap: () {
        context.push(
          RoutePaths.surahRead,
          extra: (surah),
        );
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [selectedColor.withOpacity(0.8), selectedColor.withOpacity(0.4)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surah.namaLatin ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Arti: ${surah.arti ?? '-'}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "Jumlah Ayat: ${surah.jumlahAyat ?? '-'}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                surah.nama ?? '',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Amiri',
                  shadows: [
                    Shadow(
                      blurRadius: 6,
                      color: Colors.white.withOpacity(0.6),
                      offset: const Offset(2, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
