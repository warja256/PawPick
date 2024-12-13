import 'package:flutter/material.dart';
import 'package:paw_pick/form/about2.dart';
import 'package:paw_pick/form/about4.dart';

class WhoScreen extends StatefulWidget {
  const WhoScreen({super.key});

  @override
  State<WhoScreen> createState() => _WhereAtState();
}

class _WhereAtState extends State<WhoScreen> {
  Color femBtn = Colors.white;
  Color mascBtn = Colors.white;
  Color femText = const Color(0xFF000000);
  Color mascText = const Color(0xFF000000);
  FontWeight femWeight = FontWeight.normal;
  FontWeight mascWeight = FontWeight.normal;
  String femPath = 'assets/form/check.png';
  String mascPath = 'assets/form/check.png';

  void _onButtonPressed(String gender) {
    setState(() {
      if (gender == 'female') {
        femBtn = femBtn == Colors.white
            ? Theme.of(context).primaryColor
            : Colors.white;
        femText = femText == const Color(0xFF000000)
            ? Colors.white
            : const Color(0xFF000000);
        femWeight = femWeight == FontWeight.normal
            ? FontWeight.bold
            : FontWeight.normal;

        mascBtn = Colors.white;
        mascText = const Color(0xFF000000);
        mascWeight = FontWeight.normal;
        mascPath = 'assets/form/check.png';
      } else {
        mascBtn = mascBtn == Colors.white
            ? Theme.of(context).primaryColor
            : Colors.white;
        mascText = mascText == const Color(0xFF000000)
            ? Colors.white
            : const Color(0xFF000000);
        mascWeight = mascWeight == FontWeight.normal
            ? FontWeight.bold
            : FontWeight.normal;

        femBtn = Colors.white;
        femText = const Color(0xFF000000);
        femWeight = FontWeight.normal;
        femPath = 'assets/form/check.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 38, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    const WhereAt(),
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
                        'assets/btn_back.png',
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
                            builder: (context) => const Placeholder(),
                          ),
                        );
                      },
                      child: Text(
                        "Пропустить",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          height: 1.5,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Я...',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 91),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('female'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(femBtn),
                    fixedSize: WidgetStateProperty.all(const Size(295, 58)),
                    side: WidgetStateProperty.all(const BorderSide(
                      color: Color(0x0f575CEE), // Цвет границы
                      width: 1, // Толщина границы
                    )),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Радиус скругления
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Женщина',
                        style: TextStyle(
                          color: femText,
                          fontSize: 16,
                          height: 1.5,
                          fontWeight: femWeight,
                        ),
                      ),
                      Image.asset(
                        femPath,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('male'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(mascBtn),
                    fixedSize: WidgetStateProperty.all(const Size(295, 58)),
                    side: WidgetStateProperty.all(const BorderSide(
                      color: Color(0x0f575CEE), // Цвет границы
                      width: 1, // Толщина границы
                    )),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Радиус скругления
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Мужчина',
                        style: TextStyle(
                          color: mascText,
                          fontSize: 16,
                          height: 1.5,
                          fontWeight: mascWeight,
                        ),
                      ),
                      Image.asset(
                        mascPath,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 312),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const NamedDate(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: const Text(
                    "Продолжить",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
