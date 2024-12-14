import 'package:flutter/material.dart';
import 'package:paw_pick/form/about1.dart';
import '../auth/sign_in.dart';
import 'sign_up.dart';
import 'package:paw_pick/form/about1.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final TextEditingController _cityController = TextEditingController();
  bool _isCityError = false;

  void _validateCity() {
    setState(() {
      _isCityError = _cityController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                                    RegistrationScreen(),
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
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                      child: Container(),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Подтверждение регистрации',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 73),
                const Text(
                  'Введите код, отправленный на указанный вами номер телефона/адрес электронной почты',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _cityController,
                  onChanged: (value) => _validateCity(),
                  decoration: InputDecoration(
                    hintText: 'Код подтверждения',
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError ? Colors.red : Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError ? Colors.red : Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError
                            ? Colors.red
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    errorText: _isCityError ? 'Необходимо ввести код' : null,
                    errorStyle: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 380),
                ElevatedButton(
                  onPressed: () {
                    _validateCity();
                    if (!_isCityError) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const TellAbout(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: const Text(
                    "Проверить код",
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