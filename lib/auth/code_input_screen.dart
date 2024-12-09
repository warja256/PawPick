import 'package:flutter/material.dart';
import 'package:paw_pick/auth/new_password.dart';
import 'dart:async';

//убрать кнопку запуска таймера в предыдущий экран
//обработка введенного кода?
//добавить таймер на отправить еще раз?

class CodeInput extends StatefulWidget {
  const CodeInput({super.key});

  @override
  State<CodeInput> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<CodeInput> {
  int _start = 60;
  late Timer _timer;
  bool _isRunning = false;

  void startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start < 1) {
        setState(() {
          _timer.cancel();
          _isRunning = false;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String formatTime(int seconds) {
    int minutes = (seconds / 60).truncate();
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Восстановление пароля с таймером'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Text("PAWPICK",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    height: 1.5,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              alignment: Alignment.centerLeft,
              child: const Text("Восстановление пароля",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(height: 35),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                  "Введите код, отправленный на указанный вами номер телефона/адрес электронной почты",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 14.0,
                  )),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              alignment: Alignment.center,
              child: Text(
                formatTime(_start),
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: _isRunning ? null : startTimer,
                child: const Text('Start Timer'),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Введите полученный код',
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
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
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
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
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
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPassword(),
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
                  "Создать новый пароль",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CodeInput()),
                  );
                },
                child: Text(
                  "Отправить код еще раз",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
