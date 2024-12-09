import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
        Text(
          "Настройте поиск",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Выберите возраст, размер и другие параметры, чтобы быстрее найти идеального питомца.",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).textTheme.labelMedium?.color,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}