import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/core/constant/const_color.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final List<String> _quotes = [
    "✨ Bismillah, setiap langkah adalah ibadah.",
    "🕌 Kesabaran adalah kunci ketenangan hati.",
    "📖 Al-Qur'an adalah cahaya kehidupan.",
    "🌙 Setiap malam adalah waktu untuk bersyukur."
  ];
  int _currentQuoteIndex = 0;

  @override
  void initState() {
    super.initState();

    // Update teks setiap 2 detik
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!mounted) return;
      setState(() {
        _currentQuoteIndex = (_currentQuoteIndex + 1) % _quotes.length;
      });
    });

    // **Navigasi ke Home setelah 6 detik**
    Future.delayed(const Duration(seconds: 6), () {
      if (mounted) context.go(RoutePaths.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih agar lebih clean
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // **GIF Animasi Loading**
            Image.asset(
              'assets/videos/loading.gif', // Ganti dengan path GIF yang benar
              width: 150.w,
              height: 150.h,
            ),
            SizedBox(height: 24.h),

            // **Teks Kutipan Islami**
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Text(
                _quotes[_currentQuoteIndex],
                key: ValueKey<int>(_currentQuoteIndex),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryGreenDark,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
