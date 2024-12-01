import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/dog3.png',
          height: 360,
          width: 235,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
        const Text(
          "Помогайте приютам",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFEEB738),
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Добавляйте животных в избранное, жертвуйте на их содержание и поддерживайте приюты.",
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF323755),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
