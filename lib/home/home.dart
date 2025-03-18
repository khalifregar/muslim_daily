import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Tambahkan background putih
      body: Column(
        children: [
          _buildHeader(context), // Header dengan gambar yang berubah otomatis
          Expanded(child: Container()), // Placeholder untuk konten di bawahnya
        ],
      ),
    );
  }

  /// **🕌 Bagian Header (Gambar Background & Profil)**
  Widget _buildHeader(BuildContext context) {
    String imagePath = _getBackgroundImage(); // Dapatkan gambar berdasarkan waktu

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3, // **Buat gambar lebih panjang**
      width: double.infinity,
      child: Stack(
        children: [
          // **Background Gambar**
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                debugPrint("Error loading image: $error");
                return Image.asset("assets/images/morning.jpg", fit: BoxFit.cover);
              },
            ),
          ),

          // **Teks Assalamualaikum**
          Positioned(
            top: 40.h,
            left: 20.w,
            child: Text(
              "Assalamualaikum, User",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
            ),
          ),

          // **Profil Icon**
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: const Icon(Icons.person, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// **🌅 Mendapatkan Gambar Background Berdasarkan Waktu**
  String _getBackgroundImage() {
    int hour = DateTime.now().hour;

    if (hour >= 5 && hour < 11) {
      return "assets/images/morning.jpg"; // Pagi
    } else if (hour >= 11 && hour < 15) {
      return "assets/images/afternoon.jpg"; // Siang
    } else if (hour >= 15 && hour < 18) {
      return "assets/images/evening.jpg"; // Sore
    } else {
      return "assets/images/night.jpg"; // Malam
    }
  }
}
