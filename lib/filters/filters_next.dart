import 'package:flutter/material.dart';

class FiltersNext extends StatefulWidget {
  const FiltersNext({super.key});

  @override
  State<FiltersNext> createState() => _FiltersNextState();
}

class _FiltersNextState extends State<FiltersNext> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Второй экран фильтров',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
