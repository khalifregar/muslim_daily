import 'package:flutter/material.dart';

class OnboardingItem {
  final String title;
  final String subtitle;
  final String imagePath;
  final String buttonText;

  OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.buttonText,
  });
}

List<OnboardingItem> onboardingItems = [
  OnboardingItem(
    title: '✨ Muslim Daily – Sahabat Ibadah\nKamu Setiap Hari! ✨',
    subtitle: '🕌 Dari waktu sholat sampai doa harian, semua ada di Muslim Daily! Yuk, tingkatkan ibadah dengan fitur lengkap🌙📖',
    imagePath: 'assets/images/onboarding.jpg',
    buttonText: 'Lanjut Yuk',
  ),
  OnboardingItem(
    title: '📖 Al-Qur\'an Digital yang Mudah 📖',
    subtitle: '📅 Jangan khawatir telat! Muslim Daily menyediakan jadwal sholat yang akurat sesuai lokasi kamu. Lengkap dengan notifikasi adzan! 🔔🕌',
    imagePath: 'assets/images/onboarding_2.jpg',
    buttonText: 'Yuk, lihat lagi',
  ),
  OnboardingItem(
    title: '🕋 Waktu Sholat & Arah Kiblat 🕋',
    subtitle: '✨ Muslim Daily menyediakan Al-Qur’an digital dengan tampilan nyaman dan fitur pencarian cepat. Baca lebih mudah, ibadah lebih khusyuk! 🌙📜',
    imagePath: 'assets/images/onboarding_3.jpg',
    buttonText: 'yuk, lanjut lagi',
  ),
  OnboardingItem(
    title: '🎉 Siap Menjadi Muslim Lebih Baik! 🎉',
    subtitle: '📿 Dari doa sehari-hari sampai dzikir setelah sholat, semua ada di Muslim Daily! Praktis, lengkap, dan mudah diakses kapan saja. 🌙✨',
    imagePath: 'assets/images/onboarding_4.jpg',
    buttonText: 'Bismillah, Mulai',
  ),
];
