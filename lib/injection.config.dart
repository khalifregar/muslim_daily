// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasources/remotes/alquran_surah_api_service.dart'
    as _i899;
import 'package:muslim_daily/features/alquran/alquran_read_page/data/repositories/surah_repository.dart'
    as _i627;
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_surah_repository.dart'
    as _i517;
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_bloc/surah_bloc.dart'
    as _i699;
import 'package:muslim_daily/features/alquran/alquran_read_page/presentation/bloc/surah_cubit/surah_cubit.dart'
    as _i894;

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
    gh.lazySingleton<_i517.ISurahRepository>(
        () => _i627.SurahRepository(gh<_i899.AlquranSurahApiService>()));
    gh.factory<_i699.SurahBloc>(
        () => _i699.SurahBloc(gh<_i517.ISurahRepository>()));
    gh.factory<_i894.SurahCubit>(
        () => _i894.SurahCubit(gh<_i517.ISurahRepository>()));
    return this;
  }
}
