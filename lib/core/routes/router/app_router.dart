import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/pages/menu_alquran_page.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/pages/surah_page_read.dart';
import 'package:muslim_daily/features/doa_harian/presentation/pages/doa_harian_page.dart';
import 'package:muslim_daily/features/onboarding/presentation/onboarding.dart';
import 'package:muslim_daily/features/splash/presentation/pages/splash.dart';
import 'package:muslim_daily/home/home.dart';
import 'package:muslim_daily/widgets/loading/loading_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutePaths.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    // GoRoute(
    //   path: RoutePaths.login,
    //   builder: (context, state) => const LoginScreen(),
    // ),
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RoutePaths.loadingPage,
      builder: (context, state) => const LoadingPage(),
    ),
    GoRoute(
      path: RoutePaths.alquranPage,
      builder: (context, state) => const MenuAlquranPage(),
    ),
GoRoute(
  path: RoutePaths.surahRead,
  name: 'surahRead',
  pageBuilder: (context, state) {
    final surah = state.extra as dynamic; // Boleh diganti dengan tipe Surah kalau udah fix

    return CustomTransitionPage(
      key: state.pageKey,
      child: SurahPageRead(surah: surah),
      transitionDuration: const Duration(milliseconds: 150), // ⏱️ Cepat dan smooth
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  },
),

        GoRoute(
      path: RoutePaths.doaHarian,
      builder: (context, state) => const DoaHarianPage(),
    ),
  ],
);
