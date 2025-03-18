import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:muslim_daily/features/splash/presentation/bloc/splash_cubit/splash_cubit.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);

  // Splash Screen
  locator.registerLazySingleton(() => SplashCubit(locator<SharedPreferences>()));
}
