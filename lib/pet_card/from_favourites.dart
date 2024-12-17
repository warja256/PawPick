import 'package:flutter/material.dart';
import 'package:paw_pick/models/animal.dart';
import 'package:paw_pick/donation/donate.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'package:paw_pick/favourites/favourites.dart';

Future<List<Animal>> fetchAnimalsFromJson() async {
  try {
    final String response =
        await rootBundle.loadString('assets/json_data/pets_info.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Animal.fromJson(item)).toList();
  } catch (e) {
    print('Error loading animals from JSON: $e');
    return [];
  }
}

class PetCardFavourites extends StatefulWidget {
  final Animal animal;

  const PetCardFavourites({super.key, required this.animal});

  @override
  State<PetCardFavourites> createState() => _PetCardFavouritesState();
}

class _PetCardFavouritesState extends State<PetCardFavourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        widget.animal.photos[0],
                        height: 420,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 54, left: 40, right: 0, bottom: 40),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.animal.name}, ${widget.animal.age} года',
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.animal.breed,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 0.7)),
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              'Приют',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.animal.shelter.name,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 0.7)),
                            ),
                            Image.asset(
                              'assets/pet_card/map.png',
                              width: 141,
                              height: 21,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Описание',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(widget.animal.description,
                                style: const TextStyle(fontSize: 14)),
                            const SizedBox(height: 30),
                            const Text(
                              'Характеристики',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Wrap(
                              spacing: 10.0,
                              children:
                                  widget.animal.additionalInfo.map((info) {
                                return Chip(
                                  label: Text(
                                    info,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(6.0),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 30),
                            const Row(children: [
                              Text(
                                'Галерея',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 170),
                            ]),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset(
                                    widget.animal.photos[0],
                                    fit: BoxFit.cover,
                                    width: 160,
                                    height: 210,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Закругление углов
                                  child: Image.asset(
                                    widget.animal.photos[1],
                                    fit: BoxFit.cover,
                                    width: 160,
                                    height: 210,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Закругление углов
                                  child: Image.asset(
                                    widget.animal.photos[2],
                                    fit: BoxFit.cover,
                                    width: 103,
                                    height: 132,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Закругление углов
                                  child: Image.asset(
                                    widget.animal.photos[3],
                                    fit: BoxFit.cover,
                                    width: 104,
                                    height: 132,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      6.0), // Закругление углов
                                  child: Image.asset(
                                    widget.animal.photos[4],
                                    fit: BoxFit.cover,
                                    width: 104,
                                    height: 132,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 29),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Связь с приютом:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Icon(Icons.phone,
                                        size: 17, color: Colors.black),
                                    const SizedBox(width: 6),
                                    Text(
                                      widget.animal.shelter.phone,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.email,
                                        size: 17, color: Colors.black),
                                    const SizedBox(width: 6),
                                    Text(
                                      widget.animal.shelter.email,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 44,
                    left: 40,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    HomePage(initialIndex: 1),
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
                        'assets/donation/back.png',
                        height: 52,
                        width: 52,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 392,
                    left: 0,
                    right: 0,
                    child: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                  ),
                  Positioned(
                    top: 368,
                    left: 40,
                    right: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        HomePage(initialIndex: 1),
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
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(0),
                          child: Image.asset(
                            'assets/find/dislike.png',
                            width: 66,
                            height: 66,
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final screenWidth =
                                MediaQuery.of(context).size.width;
                            return SizedBox(
                              width: screenWidth * (21 / 375),
                            );
                          },
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const DonateScreen(),
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
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(0),
                          child: Image.asset(
                            'assets/find/star.png',
                            width: 78,
                            height: 78,
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final screenWidth =
                                MediaQuery.of(context).size.width;
                            return SizedBox(
                              width: screenWidth * (21 / 375),
                            );
                          },
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        HomePage(initialIndex: 1),
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
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(0),
                          child: Image.asset(
                            'assets/find/like.png',
                            width: 66,
                            height: 66,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
