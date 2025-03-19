import 'package:flutter/material.dart';
import 'package:muslim_daily/features/daily_menu/presentation/pages/menu_daily.dart';
import 'package:muslim_daily/widgets/header_card/header_card.dart'; // Import header card

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              CustomHeader(
                title: "Assalamualaikum, User",
                backgroundImage: _getBackgroundImage(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Expanded(child: Container()),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            left: 5,
            right: 5,
            child: const MenuDaily(),
          ),
        ],
      ),
    );
  }

  String _getBackgroundImage() {
    int hour = DateTime.now().hour;
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
