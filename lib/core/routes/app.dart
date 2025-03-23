import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/routes/router/app_router.dart';

class MuslimDaily extends StatelessWidget {
  const MuslimDaily({super.key});

  @override
  Widget build(BuildContext context) {
    final config = AppConfig.instance;

    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,

          // ✅ Ini dia: wrap child-nya dengan Banner, DI SINI
          builder: (context, child) => Banner(
            message: config.flavor.toUpperCase(),
            location: BannerLocation.topStart,
            color: config.flavor == 'production'
                ? Colors.transparent
                : Colors.redAccent,
            child: child!,
          ),
        );
      },
    );
  }
}
