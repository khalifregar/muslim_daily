import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class JadwalSholatShimmerLoader extends StatelessWidget {
  const JadwalSholatShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.h,
                width: 150.w,
                color: Colors.white,
              ),
              SizedBox(height: 16.h),
              ...List.generate(5, (index) => _buildLine()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLine() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 16.h,
            width: 80.w,
            color: Colors.white,
          ),
          Container(
            height: 16.h,
            width: 60.w,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
