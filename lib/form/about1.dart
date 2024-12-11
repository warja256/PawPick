import 'package:flutter/material.dart';
import 'package:paw_pick/form/about2.dart';

class TellAbout extends StatefulWidget {
  const TellAbout({super.key});

  @override
  State<TellAbout> createState() => _TellAboutState();
}

class _TellAboutState extends State<TellAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 40,
                right: 38,
                top: 16), // Минимальный top, SafeArea добавит остальное
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Placeholder(),
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
          ),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Расскажите о себе",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                  height: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 74,
          ),
          Padding(
            padding: EdgeInsets.only(left: 61, right: 60),
            child: Image.asset(
              'assets/form/home_for_pets.png',
              height: 251,
              width: 254,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 153,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const WhereAt(),
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
          )
        ],
      )),
    );
  }
}
