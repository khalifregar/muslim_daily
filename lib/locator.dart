import 'package:get_it/get_it.dart';
import 'package:muslim_daily/core/constant/api_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/repositories/surah_repository.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_surah_repository.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_bloc/surah_bloc.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_cubit/surah_cubit.dart';
import 'package:muslim_daily/features/splash/presentation/bloc/splash_cubit/splash_cubit.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {

  locator.registerLazySingleton(() => Dio(BaseOptions(
  baseUrl: ApiConstant.baseUrl, // ✅ Pastikan baseUrl digunakan
)));
  // Register SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);



  // Register API Service
  locator.registerLazySingleton(() => AlquranSurahApiService(locator<Dio>()));

  // Register Repository
  locator.registerLazySingleton<ISurahRepository>(
    () => SurahRepository(locator<AlquranSurahApiService>()),
  );

  // Register Bloc & Cubit
  locator.registerLazySingleton(() => SurahCubit(locator<ISurahRepository>()));
  locator.registerLazySingleton(() => SurahBloc(locator<ISurahRepository>()));

  // ✅ Register SplashCubit
  locator.registerLazySingleton(() => SplashCubit(locator<SharedPreferences>()));
}
