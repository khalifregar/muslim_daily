import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuDaily extends StatelessWidget {
  const MenuDaily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "Daily Ibadah kamu",
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Shaum\nSunnah",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/sholat_menu.jpg",
                  label: "Sholat\nSunnah",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/infaq_menu.jpg",
                  label: "Infaq\n& Shodaqoh",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/alquran_menu.jpg",
                  label: "Baca\nAl'quran",
                  onPressed: () {
                    context.push('/alquran-page');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String iconPath,
    required String label,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                iconPath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            label,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}