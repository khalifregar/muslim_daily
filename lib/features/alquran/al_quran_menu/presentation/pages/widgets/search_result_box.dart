import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/widgets/surah_list_item.dart';

class SearchResultBox extends StatelessWidget {
  final List<dynamic> results;
  final VoidCallback onShowMore;

  const SearchResultBox({
    super.key,
    required this.results,
    required this.onShowMore,
  });

  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) return const SizedBox.shrink(); // ✅ Jika kosong, sembunyikan box

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h), // ✅ Responsif
          padding: EdgeInsets.all(12.r), // ✅ Padding responsif
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r), // ✅ Border radius responsif
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5.r,
                offset: Offset(0, 3.h),
              ),
            ],
          ),
          child: Column(
            children: List.generate(
              results.length > 3 ? 3 : results.length, // ✅ Batasi hanya 3 item
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 8.h), // ✅ Jarak antar item responsif
                child: SurahListItem(surah: results[index]),
              ),
            ),
          ),
        ),

        // ✅ Tampilkan tombol "Tampilkan Lebih Banyak" jika hasil lebih dari 3
        if (results.length > 3)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[700],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              minimumSize: Size(160.w, 40.h), // ✅ Ukuran tombol responsif
            ),
            onPressed: onShowMore,
            child: Text(
              "Tampilkan Lebih Banyak",
              style: TextStyle(fontSize: 14.sp), // ✅ Font size responsif
            ),
          ),
      ],
    );
  }
}
