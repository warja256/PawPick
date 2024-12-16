import 'package:flutter/material.dart';
import 'package:paw_pick/models/animal.dart';
import 'package:paw_pick/donation/donate.dart';
import 'package:paw_pick/pet_card/pet_card.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui';

//стрелка в донате
//при установке нужных паддингов по 40 не влезает в экран

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

class BottomIcons extends StatelessWidget {
  final VoidCallback onDislikePressed;
  final VoidCallback onStarPressed;

  const BottomIcons({
    required this.onDislikePressed,
    required this.onStarPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(82, 79, 79, 1),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: onDislikePressed,
            shape: CircleBorder(),
            padding: EdgeInsets.all(0),
            child: Image.asset(
              'assets/favs/close-small.png',
              width: 20,
              height: 20,
            ),
          ),
          Image.asset(
            'assets/favs/divider.png',
            width: 1,
            height: 50,
          ),
          RawMaterialButton(
            onPressed: onStarPressed,
            shape: CircleBorder(),
            padding: EdgeInsets.all(0),
            child: Image.asset(
              'assets/favs/star.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final VoidCallback onPressed;
  final VoidCallback onDislikePressed;
  final VoidCallback onStarPressed;

  const AnimalCard({
    required this.animal,
    required this.onPressed,
    required this.onDislikePressed,
    required this.onStarPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 140,
        height: 200,
        child: Stack(
          children: [
            // Фон-картинка
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                animal.photos.isNotEmpty
                    ? animal.photos[0]
                    : 'assets/find/default_pet.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Текстовая информация
            Positioned(
              bottom: 54,
              left: 16,
              right: 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${animal.name}, ${animal.age}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            // Нижняя часть с иконками
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomIcons(
                onDislikePressed: onDislikePressed,
                onStarPressed: onStarPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List<Animal> animals = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchAnimalsFromJson().then((loadedAnimals) {
      setState(() {
        animals = loadedAnimals;
        isLoading = false;
      });
    });
  }

  void removeAnimal(Animal animal) {
    setState(() {
      animals.remove(animal);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Избранное',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 9),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Здесь собраны животные, которые вам понравились.',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Сегодня',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : animals.isEmpty
                      ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child:
                          Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 74),
                              const Text(
                                'Здесь пока пусто',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Добавляйте понравившихся животных в избранное, чтобы не потерять их из виду',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 18.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/favs/Subtract.png',
                                      width: 50,
                                      height: 40,
                                    ),
                                    Image.asset(
                                      'assets/favs/Intersect.png',
                                      width: 50,
                                      height: 40,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 140 / 200,
                            ),
                            itemCount: animals.length,
                            itemBuilder: (context, index) {
                              final animal = animals[index];
                              return AnimalCard(
                                animal: animal,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PetCard(animal: animal),
                                    ),
                                  );
                                },
                                onDislikePressed: () {
                                  removeAnimal(animal);
                                },
                                onStarPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation, secondaryAnimation) => const DonateScreen(),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                        return FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}

