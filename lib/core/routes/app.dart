import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/core/api/api_client.dart';
import 'package:muslim_daily/core/routes/router/app_router.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';

class MuslimDaily extends StatelessWidget {
  const MuslimDaily({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = AlquranSurahApiService(ApiClient.dioClient());
    
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
