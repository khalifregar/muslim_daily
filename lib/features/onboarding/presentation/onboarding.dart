import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/core/constant/const_color.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';
import 'package:muslim_daily/features/onboarding/presentation/widgets/onboarding_item_list.dart';
import 'package:muslim_daily/widgets/button/swipe_button.dart'; 

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;

  void _nextPage() {
    if (_currentIndex < onboardingItems.length - 1) {
      setState(() => _currentIndex++);
    }
  }

void _finishOnboarding() {
  context.go(RoutePaths.login);
}



  @override
  Widget build(BuildContext context) {
    final item = onboardingItems[_currentIndex];

    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
        child: Column(
          children: [
            _buildImageCard(item.imagePath, context),
            _buildTextSection(item),
          ],
        ),
      ),
    );
  }

  /// **Bagian Atas: Gambar Onboarding**
  Widget _buildImageCard(String imagePath, BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height * 0.67;

    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 7.h, bottom: 10.h),
      child: Container(
        width: double.infinity,
        height: imageHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  /// **Bagian Bawah: Teks & Tombol/Swipe**
  Widget _buildTextSection(OnboardingItem item) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryGreen,
            ),
          ),
          SizedBox(height: 8.h),

          Text(
            item.subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textBlack,
            ),
          ),
          SizedBox(height: 20.h),

          // **Cek jika ini halaman terakhir, gunakan SwipeButton**
          _currentIndex == onboardingItems.length - 1
              ? SwipeButton(
                  onComplete: _finishOnboarding,
                )
              : SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _nextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: Text(
                      item.buttonText,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.buttonTextWhite,
                      ),
                    ),
                  ),
                ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
