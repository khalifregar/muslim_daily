import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:muslim_daily/core/constant/preference_constant.dart';
import 'package:muslim_daily/core/routes/router/app_router_path.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final SharedPreferences prefs;

  SplashCubit(this.prefs) : super(const SplashState.initial());

  Future<void> initSplash() async {
    try {
      emit(const SplashState.loadInProgress());
      await Future.delayed(const Duration(seconds: 2));

      final bool isOnboardingCompleted = prefs.getBool(PreferenceConstants.onboardingCompleted) ?? false;
      final bool isLoggedIn = prefs.getBool(PreferenceConstants.isLoggedIn) ?? false;

      if (!isOnboardingCompleted) {
        emit(const SplashState.loadSuccess(RoutePaths.onboarding));
      } else if (!isLoggedIn) {
        emit(const SplashState.loadSuccess(RoutePaths.login));
      } else {
        emit(const SplashState.loadSuccess(RoutePaths.home));
      }
    } catch (e) {
      emit(const SplashState.loadFailure());
    }
  }
}
