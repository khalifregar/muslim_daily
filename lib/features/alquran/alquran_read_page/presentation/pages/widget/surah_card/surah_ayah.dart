import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardAyah extends StatelessWidget {
  final Map<String, dynamic> ayatData;

  const CardAyah({Key? key, required this.ayatData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 📌 Card Ayat (Arab, Latin, Terjemahan)
        Container(
          margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey.shade300, width: 1.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4.r,
                spreadRadius: 1.r,
                offset: Offset(0, 2.h),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 📌 Arabic Text (Selalu di kanan)
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayatData["Arabic Text"] ?? "No Data",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 6.h),

              // 📌 Latin Transliteration (Di bawah Arabic)
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayatData["Latin Transliteration"] ?? "No Data",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontStyle: FontStyle.italic,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 4.h),

              // 📌 Indonesian Translation (Di bawah Latin)
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayatData["Indonesian Translation"] ?? "No Data",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.blueGrey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),

        // 📌 Card Tajwid (Tampil terpisah dari Card Ayat)
        Container(
          margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey.shade300, width: 1.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4.r,
                spreadRadius: 1.r,
                offset: Offset(0, 2.h),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 📌 Title Tajwid
              Text(
                "📖 Tajweed Rules",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700,
                ),
              ),
              SizedBox(height: 8.h),

              // 📌 List Tajwid (Jika Ada)
              if (ayatData["Tajweed Rules"] != null &&
                  ayatData["Tajweed Rules"] is List &&
                  (ayatData["Tajweed Rules"] as List).isNotEmpty)
                ...List.generate((ayatData["Tajweed Rules"] as List).length, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Row(
                      children: [
                        Icon(Icons.circle, size: 6.r, color: Colors.green),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: Text(
                            ayatData["Tajweed Rules"][index],
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })
              else
                Text(
                  "No Tajweed rules available.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade700,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
