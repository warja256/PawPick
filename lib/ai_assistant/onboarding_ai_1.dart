import 'package:flutter/material.dart';
import 'package:paw_pick/ai_assistant/onboarding_ai_2.dart';

//адаптив

class AiFirstOnboarding extends StatelessWidget {
  const AiFirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const SizedBox(height: 90),
              Center(
                child: Image.asset(
                  'assets/ai_pics/pet_1.png',
                  height: 35,
                  width: 35,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.center,
                child: const Text(
                  'Твой AI ассистент',
                  style: TextStyle(
                    color: Color(0xFF54BCC3),
                    height: 1.5,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.center,
                child: const Text(
                  'Наш AI-ассистент — это ваш надежный помощник в уходе за домашними питомцами. С его помощью вы сможете получить ответы на любые вопросы, связанные с уходом за животными, будь то собаки, кошки или другие питомцы.',
                  style: TextStyle(
                    color: Color(0xFF757575),
                    height: 1.5,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/ai_pics/dog_2.png',
                  height: 320,
                  width: 320,
                ),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF54BCC3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => const AiSecondOnboarding(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0, // Убираем тень
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: const Size(double.infinity, 64),
                        ),
                        child: const Text(
                          'Продолжить',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image.asset(
                        'assets/ai_pics/arrow-right.png',
                        height: 35,
                        width: 37,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
