import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:muslim_daily/core/constant/api_constant.dart';
import 'package:muslim_daily/core/network/api_service.dart';

import 'package:muslim_daily/features/alquran/al_quran_menu/data/repositories/surah_repository.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_bloc/surah_bloc.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_cubit/surah_cubit.dart';
import 'package:muslim_daily/features/splash/presentation/bloc/splash_cubit/splash_cubit.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // ✅ Register ApiService (yang di dalamnya ada Dio + Logger + Interceptor)
  locator.registerLazySingleton(() => ApiService());

  // ✅ Register SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);

  // ✅ Register Repository (pakai ApiService)
  locator.registerLazySingleton<ISurahRepository>(
    () => SurahRepository(locator<ApiService>()),
  );

  // ✅ Register Bloc & Cubit
  locator.registerLazySingleton(() => SurahCubit(locator<ISurahRepository>()));
  locator.registerLazySingleton(() => SurahBloc(locator<ISurahRepository>()));

  // ✅ Register SplashCubit
  locator.registerLazySingleton(() => SplashCubit(locator<SharedPreferences>()));
}

