import 'package:flutter/material.dart';

class ExitDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const ExitDialog({required this.onConfirm, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 275,
        width: 351,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Вы уверены, что хотите выйти?',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Нет'),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onConfirm();
                  },
                  child: const Text('Да'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
