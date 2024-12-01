import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/dog2.png',
          height: 360,
          width: 235,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
        const Text(
          "Настройте поиск",
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
            "Выберите возраст, размер и другие параметры, чтобы быстрее найти идеального питомца.",
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
