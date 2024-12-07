import 'package:flutter/material.dart';
import 'dart:async';

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
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
        title: Text('Восстановление пароля с таймером'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formatTime(_start),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isRunning ? null : startTimer,
              child: Text('Start Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
