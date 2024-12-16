import 'package:flutter/material.dart';
import 'package:paw_pick/models/animal.dart'; // Импортируем модель Animal

class PetCard extends StatefulWidget {
  final Animal animal;

  const PetCard({super.key, required this.animal});

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Column(
            children: [
              Stack(
                children: [
                  // Здесь вы можете использовать данные из объекта animal
                  Text(widget.animal.name),
                  Text(widget.animal.breed),
                  // Добавьте другие виджеты для отображения информации о животном
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
