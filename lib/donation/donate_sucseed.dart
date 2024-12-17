import 'package:flutter/material.dart';
import '../auth/sign_in.dart';
import '../registration/sign_up.dart';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'donate.dart';

class DonateSucseedScreen extends StatelessWidget {
  const DonateSucseedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Белый фон
          Container(
            color: Colors.white,
          ),
          // Полупрозрачный оранжевый слой
          Container(
            color: Color.fromRGBO(255, 198, 66, 0.7),
          ),
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      DonateScreen(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/donation/back.png',
                          height: 52,
                          width: 52,
                          fit: BoxFit.contain,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DonateScreen(),
                            ),
                          );
                        },
                        child: Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 200),
                  const Text(
                    'Спасибо!',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center, // Выравнивание текста по центру
                  ),
                  const SizedBox(height: 17),
                  const Text(
                    'Донаты поддерживают приюты и помогают им содержать питомцев. Благодаря таким людям, как вы, приюты обеспечивают свою работу. Ваш вклад поможет гарантировать питание и медицинское обслуживание питомцев.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center, // Выравнивание текста по центру
                  ),
                  const Text(
                    'Ваша поддержка невероятно важна для нас.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Выравнивание текста по центру
                  ),
                ],
              ),
            ),
          ),
        ),]
      )
    );
  }
}

