import 'package:flutter/material.dart';
import 'package:paw_pick/auth/sign_in.dart';
import 'package:paw_pick/registration/registration_1.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // Индекс текущей страницы
  int currentPage = 0;

  final List<String> titles = [
    "Найдите своего питомца",
    "Настройте поиск",
    "Помогайте приютам"
  ];

  final List<String> bodies = [
    "Листайте карточки и находите животных из приютов, которые ждут встречи с вами.",
    "Выберите возраст, размер и другие параметры, чтобы быстрее найти идеального питомца.",
    "Добавляйте животных в избранное, жертвуйте на их содержание и поддерживайте приюты."
  ];

  final List<String> images = [
    'assets/dog1.png',
    'assets/dog2.png',
    'assets/dog3.png'
  ];

  // Контроллер для управления PageView
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          // Detect horizontal drag
          onHorizontalDragUpdate: (details) {
            if (details.primaryDelta! > 0) {
              // Swipe right
              if (currentPage > 0) {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            } else if (details.primaryDelta! < 0) {
              // Swipe left
              if (currentPage < images.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 44)),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 360,
                        width: 235, // Фиксированная высота
                        child: Image.asset(
                          images[index],
                          fit: BoxFit
                              .contain, // Убедитесь, что изображение сохраняет пропорции
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 44),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  children: [
                    Text(
                      titles[currentPage],
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEEB738),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        bodies[currentPage],
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF323755),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? const Color(0xFFEEB738)
                            : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 39, left: 40, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEEB738),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: const Text(
                    "Создать аккаунт",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 64),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AuthScreen()),
                    );
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Есть аккаунт? ",
                          style: TextStyle(
                            color: Color(0xFF323755),
                          ),
                        ),
                        TextSpan(
                          text: "Войти",
                          style: TextStyle(
                            color: Color(0xFFEEB738),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
