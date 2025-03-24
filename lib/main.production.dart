import 'package:flutter/material.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/routes/app.dart';
import 'package:muslim_daily/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const config = AppConfig(
    appName: 'Muslim Daily',
    flavor: 'production',
    equranBaseUrl: 'https://equran.id/api',
    muslimApiBaseUrl: 'https://muslim-api-three.vercel.app',
    aladhanBaseUrl: 'https://api.aladhan.com', // ✅ Tambahan di sini
  );

  AppConfig.initialize(config);

  await setupLocator();

  runApp(const MuslimDaily());
}
