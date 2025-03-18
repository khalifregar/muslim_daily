import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/core/routes/router/app_router.dart';

class MuslimDaily extends StatelessWidget {
  const MuslimDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915), // Sesuaikan dengan desain UI kamu
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter, // GoRouter digunakan di sini
        );
      },
    );
  }
}
