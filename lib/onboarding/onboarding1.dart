import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/dog1.png',
          height: 360,
          width: 235,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 44),
        Text(
          "Найдите своего питомца",
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
            "Листайте карточки и находите животных из приютов, которые ждут встречи с вами.",
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
