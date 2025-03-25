import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class JadwalSholatShimmerLoader extends StatelessWidget {
  const JadwalSholatShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header shimmer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 120, height: 14, color: Colors.white),
                Container(width: 80, height: 14, color: Colors.white),
              ],
            ),
            const SizedBox(height: 20),

            // 5 shimmer tiles
            ...List.generate(5, (index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 80, height: 14, color: Colors.white),
                        Container(width: 50, height: 14, color: Colors.white),
                      ],
                    ),
                  ),
                  if (index < 4)
                    const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
