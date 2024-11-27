import 'package:flutter/material.dart';
import 'onboarding/onboarding.dart';
import 'auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstLaunchScreen(),
    );
  }
}

class FirstLaunchScreen extends StatelessWidget {
  const FirstLaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulating the check for first launch.
    bool isFirstLaunch =
        true; // You can replace this with actual logic for first launch.

    if (isFirstLaunch) {
      return const OnboardingScreen();
    } else {
      return const AuthScreen();
    }
  }
}
