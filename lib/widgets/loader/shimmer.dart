import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SurahShimmerLoader extends StatelessWidget {
  const SurahShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: 6,
      separatorBuilder: (_, __) => SizedBox(height: 20.h),
      itemBuilder: (_, __) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 24.h,
                width: double.infinity,
                color: Colors.white,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 14.h,
                width: double.infinity,
                color: Colors.white,
              ),
              SizedBox(height: 6.h),
              Container(
                height: 14.h,
                width: double.infinity,
                color: Colors.white,
              ),
              const Divider(thickness: 0.5),
            ],
          ),
        );
      },
    );
  }
}
