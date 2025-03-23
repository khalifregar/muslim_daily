// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:muslim_daily/core/network/api_service.dart' as _i703;
import 'package:muslim_daily/core/network/network_module.dart' as _i910;
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart'
    as _i315;
import 'package:muslim_daily/features/alquran/al_quran_menu/data/repositories/surah_repository.dart'
    as _i834;
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart'
    as _i996;
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_bloc/surah_bloc.dart'
    as _i800;
import 'package:muslim_daily/features/alquran/al_quran_menu/presentation/bloc/surah_cubit/surah_cubit.dart'
    as _i362;
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart'
    as _i711;
import 'package:muslim_daily/features/alquran/alquran_read_page/data/repositories/alquran_repository.dart'
    as _i788;
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_alquran_repository.dart'
    as _i73;
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/alquran_read_cubit/alquran_read_cubit.dart'
    as _i283;
import 'package:muslim_daily/features/doa_harian/data/repositories/doa_harian_repository.dart'
    as _i117;
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart'
    as _i654;
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_bloc/doa_harian_bloc.dart'
    as _i410;
import 'package:muslim_daily/features/doa_harian/presentation/bloc/doa_harian_cubit/doa_harian_cubit.dart'
    as _i795;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.muslimDio,
      instanceName: 'muslimDio',
    );
    gh.lazySingleton<_i73.IAlquranRepository>(
        () => _i788.AlquranRepository(gh<_i703.ApiService>()));
    gh.lazySingleton<_i654.IDoaHarianRepository>(
        () => _i117.DoaHarianRepository(gh<_i703.ApiService>()));
    gh.factory<_i283.AlquranReadCubit>(
        () => _i283.AlquranReadCubit(gh<_i73.IAlquranRepository>()));
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.equranDio,
      instanceName: 'equranDio',
    );
    gh.lazySingleton<_i315.AlquranSurahApiService>(() => networkModule
        .alquranSurahApiService(gh<_i361.Dio>(instanceName: 'equranDio')));
    gh.lazySingleton<_i711.SurahReadApiService>(() => networkModule
        .surahReadApiService(gh<_i361.Dio>(instanceName: 'equranDio')));
    gh.lazySingleton<_i996.ISurahRepository>(
        () => _i834.SurahRepository(gh<_i703.ApiService>()));
    gh.factory<_i800.SurahBloc>(
        () => _i800.SurahBloc(gh<_i996.ISurahRepository>()));
    gh.factory<_i362.SurahCubit>(
        () => _i362.SurahCubit(gh<_i996.ISurahRepository>()));
    gh.factory<_i410.DoaHarianBloc>(
        () => _i410.DoaHarianBloc(gh<_i654.IDoaHarianRepository>()));
    gh.factory<_i795.DoaHarianCubit>(
        () => _i795.DoaHarianCubit(gh<_i654.IDoaHarianRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i910.NetworkModule {}
