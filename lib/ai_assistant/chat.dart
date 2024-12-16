import 'package:flutter/material.dart';
import 'package:paw_pick/homescreen/homescreen.dart';

//адаптив

class AiChat extends StatelessWidget {
  const AiChat({super.key});

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
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.center,
                child: const Text(
                  'Здесь будет чат AI ассистента!',
                  style: TextStyle(
                    color: Color(0xFF757575),
                    height: 1.5,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 470),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => HomePage(initialIndex: 2),
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
                  backgroundColor: const Color(0xFF54BCC3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(double.infinity, 64),
                ),
                child: const Text(
                  'Вернуться в профиль',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            ]
          ),
        ),
      ),
    );
  }
}
