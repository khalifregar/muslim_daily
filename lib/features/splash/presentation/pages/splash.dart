import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_daily/features/splash/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:muslim_daily/locator.dart';
import 'package:animate_do/animate_do.dart'; // Import animate_do

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => locator<SplashCubit>()..initSplash(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.maybeMap(
            loadSuccess: (value) {
              Future.delayed(const Duration(milliseconds: 500), () { // Delay sedikit untuk transisi
                GoRouter.of(context).pushReplacement(value.routerName);
              });
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SafeArea(
            child: Center(
              child: FadeIn(
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  'assets/images/splash.png',
                  width: 400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
