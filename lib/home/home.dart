import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:muslim_daily/features/card_content/presentation/pages/card_content.page.dart';
import 'package:muslim_daily/features/daily_menu/presentation/pages/menu_daily.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/bloc/jadwal_sholat_cubit/jadwal_sholat_cubit.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/pages/jadwal_sholat_section.dart';
import 'package:muslim_daily/widgets/carousel_card/carousel.dart';
import 'package:muslim_daily/widgets/header_card/header_card.dart';
import 'package:muslim_daily/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JadwalSholatCubit>(),
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatefulWidget {
  const _HomePageContent({super.key});

  @override
  State<_HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<_HomePageContent> {
  final GlobalKey<JadwalSholatPageState> _jadwalKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  Future<void> _onRefresh() async {
    await _jadwalKey.currentState?.fetchJadwalSholat();
  }

  final List<String> _carouselImages = List.generate(
    6,
    (index) => 'assets/images/onboarding_${index + 1}.jpg',
  );

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) => false,
        child: LiquidPullToRefresh(
          onRefresh: _onRefresh,
          color: Colors.teal,
          backgroundColor: Colors.white,
          animSpeedFactor: 2.0,
          height: 100,
          showChildOpacityTransition: false,
          springAnimationDurationInMilliseconds: 600,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(bottom: 64.h),
            child: Column(
              children: [
                // ✅ HEADER
                CustomHeader(
                  title: "Assalamualaikum, User",
                  backgroundImage: _getBackgroundImage(),
                ),

                /// ✅ CONTENT WRAPPER DENGAN OFFSET
                Transform.translate(
                  offset: Offset(0, -screenHeight * 0.15),
                  child: Column(
                    children: [
                      /// ✅ DAILY MENU
                      SizedBox(
                        width: double.infinity,
                        child: const MenuDaily(),
                      ),

                      SizedBox(height: 12.h),

                      /// ✅ JADWAL SHOLAT
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: JadwalSholatPage(key: _jadwalKey),
                      ),

                      SizedBox(height: 16.h),

                      /// ✅ CAROUSEL BANNER
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: CarouselBanner(),
                      ),

                      SizedBox(height: 24.h),

                      /// ✅ TITLE SECTION
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Yuk, update terus...",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12.h),

                      /// ✅ BOX BESAR DENGAN CARD DI DALAMNYA
                      const CardContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getBackgroundImage() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 11) {
      return "assets/images/morning.jpg";
    } else if (hour >= 11 && hour < 15) {
      return "assets/images/afternoon.jpg";
    } else if (hour >= 15 && hour < 18) {
      return "assets/images/evening.jpg";
    } else {
      return "assets/images/afternoon.jpg";
    }
  }
}
