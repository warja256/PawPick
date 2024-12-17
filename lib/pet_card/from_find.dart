import 'package:flutter/material.dart';
import 'package:paw_pick/models/animal.dart';
import 'package:paw_pick/donation/donate.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'package:paw_pick/find/find.dart';
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

class PetCardFind extends StatefulWidget {
  final Animal animal;

  const PetCardFind({super.key, required this.animal});

  @override
  State<PetCardFind> createState() => _PetCardFindState();
}

class _PetCardFindState extends State<PetCardFind> {
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
                        height: 415,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 54, left: 40, right: 40, bottom: 40),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.animal.name}, ${widget.animal.age} года',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.animal.breed,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 0.7)),
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Приют',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.animal.shelter.name,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 0.7)),
                            ),
                            Image.asset(
                              'assets/pet_card/map.png',
                              width: 141,
                              height: 21,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Описание',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(widget.animal.description,
                                style: TextStyle(fontSize: 14)),
                            SizedBox(height: 30),
                            Text(
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
                                  padding: EdgeInsets.all(6.0),
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
                            SizedBox(height: 30),
                            Row(children: [
                              Text(
                                'Галерея',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 170),
                              Text(
                                'Смотреть все',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ]),
                            SizedBox(height: 10),
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
                                SizedBox(width: 10),
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
                            SizedBox(height: 10),
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
                                SizedBox(width: 10),
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
                                SizedBox(width: 10),
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
                            SizedBox(height: 29),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Связь с приютом:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.phone,
                                        size: 17, color: Colors.black),
                                    SizedBox(width: 6),
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
                                    Icon(Icons.email,
                                        size: 17, color: Colors.black),
                                    SizedBox(width: 6),
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
                                    HomePage(),
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
                                        HomePage(),
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
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0),
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
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0),
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
                                        FavScreen(),
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
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0),
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
