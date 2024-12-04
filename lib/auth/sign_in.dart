import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Войдите в свой аккаунт',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
