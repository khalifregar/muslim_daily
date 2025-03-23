import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KategoriDoaCard extends StatelessWidget {
  final String label;
  final bool selected;

  const KategoriDoaCard({
    super.key,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF007A5A) : const Color(0xFF00966C),
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
