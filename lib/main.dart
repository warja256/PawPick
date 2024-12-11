import 'package:flutter/material.dart';
import 'package:paw_pick/filters/filter_settings.dart';
import 'package:paw_pick/form/about1.dart';
import 'package:paw_pick/form/about2.dart';
import 'package:paw_pick/onboarding/onboarding.dart';
import 'package:paw_pick/registration/sign_up.dart';
import 'auth/sign_in.dart';
import 'theme/theme.dart';
import 'filters/filters.dart';
import 'registration/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}

class FirstLaunchScreen extends StatelessWidget {
  const FirstLaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFirstLaunch = true;

    if (isFirstLaunch) {
      return const OnboardingScreen();
    } else {
      return const AuthScreen();
    }
  }
}