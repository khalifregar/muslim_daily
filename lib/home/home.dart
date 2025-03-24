import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_daily/features/daily_menu/presentation/pages/menu_daily.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/bloc/jadwal_sholat_cubit/jadwal_sholat_cubit.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/pages/jadwal_sholat_section.dart';
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

  Future<void> _onRefresh() async {
    await _jadwalKey.currentState?.fetchJadwal();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: 64.h),
          child: Column(
            children: [
              /// ✅ HEADER
              CustomHeader(
                title: "Assalamualaikum, User",
                backgroundImage: _getBackgroundImage(),
              ),

              /// ✅ DAILY MENU & JADWAL SHOLAT OVERLAP NAIK KE HEADER
              Transform.translate(
                offset: Offset(0, -screenHeight * 0.15), // ⬅️ LEBIH NAIK LAGI
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: const MenuDaily(),
                    ),
                    SizedBox(height: 8.h), // jarak kecil biar rapat
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: JadwalSholatPage(key: _jadwalKey),
                    ),
                  ],
                ),
              ),
            ],
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
