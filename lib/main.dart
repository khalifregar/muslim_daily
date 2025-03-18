import 'package:flutter/material.dart';
import 'package:muslim_daily/core/routes/app.dart';
import 'package:muslim_daily/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(); 

  runApp(const MuslimDaily());
}
