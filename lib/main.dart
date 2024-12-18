import 'package:flutter/material.dart';
import 'package:paw_pick/favourites/favourites.dart';
import 'package:paw_pick/filters/filter_settings.dart';
import 'package:paw_pick/find/find.dart';
import 'package:paw_pick/form/about1.dart';
import 'package:paw_pick/form/about2.dart';
import 'package:paw_pick/form/about3.dart';
import 'package:paw_pick/form/about4.dart';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'package:paw_pick/onboarding/onboarding.dart';
import 'package:paw_pick/profile/profile.dart';
import 'package:paw_pick/registration/sign_up.dart';
import 'auth/sign_in.dart';
import 'theme/theme.dart';
import 'filters/filters.dart';
import 'donation/donate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
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
      return OnboardingScreen();
    } else {
      return AuthScreen();
    }
  }
}
