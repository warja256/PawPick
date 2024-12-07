import 'package:flutter/material.dart';
import '../registration/registration_1.dart';
import 'package:paw_pick/auth/sign_in.dart';
import 'package:paw_pick/auth/code_input_screen.dart';

//валидация полей
//перенести запуск таймера на кнопку запросить код

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                const AuthScreen(),
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
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                    "PAWPICK",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      height: 1.5,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    )
                  ),            
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Восстановление пароля",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  )
                ),            
              ),
              const SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Укажите номер телефона или адрес электронной почты, используемые при создании вашего аккаунта",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 14.0,
                  )
                ),            
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Телефон или почта',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 335,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CodeInput(),
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
                    "Запросить код",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegistrationScreen()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Нет аккаунта? ",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.labelMedium?.color),
                        ),
                        TextSpan(
                          text: "Создать",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
