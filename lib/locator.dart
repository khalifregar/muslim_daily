import 'package:get_it/get_it.dart';
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_cubit/doa_harian_cubit.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/repositories/jadwal_sholat_repository.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/interfaces/i_jadwal_sholat.dart';
import 'package:muslim_daily/features/jadwal_sholat/presentation/bloc/jadwal_sholat_cubit/jadwal_sholat_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Al-Qur'an
import 'package:muslim_daily/features/alquran/al_quran_menu/data/repositories/surah_repository.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_bloc/surah_bloc.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_cubit/surah_cubit.dart';

// Al-Qur'an Read
import 'package:muslim_daily/features/alquran/alquran_read_page/data/repositories/alquran_repository.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_alquran_repository.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/alquran_read_cubit/alquran_read_cubit.dart';

// Doa Harian
import 'package:muslim_daily/features/doa_harian/data/repositories/doa_harian_repository.dart';
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart';
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_bloc/doa_harian_bloc.dart';


// Core
import 'package:muslim_daily/core/network/api_service.dart';

// Splash
import 'package:muslim_daily/features/splash/presentation/bloc/splash_cubit/splash_cubit.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // ✅ Register ApiService (yang di dalamnya ada Dio + Logger + Interceptor)
  locator.registerLazySingleton(() => ApiService());

  // ✅ Register SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);

  // ✅ Register Surah Repository & Bloc/Cubit
  locator.registerLazySingleton<ISurahRepository>(
    () => SurahRepository(locator<ApiService>()),
  );
  locator.registerLazySingleton(() => SurahCubit(locator<ISurahRepository>()));
  locator.registerLazySingleton(() => SurahBloc(locator<ISurahRepository>()));

  // ✅ Register Alquran Read Repository & Cubit
  locator.registerLazySingleton<IAlquranRepository>(
    () => AlquranRepository(locator<ApiService>()),
  );
  locator.registerLazySingleton(
    () => AlquranReadCubit(locator<IAlquranRepository>()),
  );

// ✅ Register Doa Harian Repository
locator.registerLazySingleton<IDoaHarianRepository>(
  () => DoaHarianRepository(locator<ApiService>()),
);

// ✅ Register Bloc dan Cubit sebagai factory (Best Practice)
locator.registerFactory(() => DoaHarianCubit(locator<IDoaHarianRepository>()));
locator.registerFactory(() => DoaHarianBloc(locator<IDoaHarianRepository>()));

// ✅ Register Jadwal Sholat Repository
locator.registerLazySingleton<IJadwalSholatRepository>(
  () => JadwalSholatRepository(locator<ApiService>()),
);

// ✅ Register Cubit sebagai factory (Best Practice)
locator.registerFactory(() => JadwalSholatCubit(locator<IJadwalSholatRepository>()));


  // ✅ Register SplashCubit
  locator.registerLazySingleton(() => SplashCubit(locator<SharedPreferences>()));
}