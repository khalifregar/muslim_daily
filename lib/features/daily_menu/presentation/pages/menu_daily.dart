import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';

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
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 24,
              children: [
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Doa\nHarian",
                  onPressed: () {
                    context.push(RoutePaths.doaHarian);
                  },
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/sholat_menu.jpg",
                  label: "Hadist\nShahih",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/infaq_menu.jpg",
                  label: "Kumpulan\nDzikir",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/alquran_menu.jpg",
                  label: "Baca\nAl-Qur'an",
                  onPressed: () {
                    context.push('/alquran-page');
                  },
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Pengingat\nIbadah",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Jadwal\nKajian",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Tasbih\nDigital",
                  onPressed: () {},
                ),
                _buildMenuItem(
                  iconPath: "assets/icon/shaum_menu.jpg",
                  label: "Arah\nKiblat",
                  onPressed: () {},
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
      child: SizedBox(
        width: 65,
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
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
