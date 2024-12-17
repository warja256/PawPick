import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:paw_pick/donation/donate.dart';
import 'package:paw_pick/filters/filter_settings.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:ui';
import 'package:paw_pick/models/animal.dart'; // Импортируем модель Animal
import 'package:paw_pick/pet_card/from_find.dart';

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

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final VoidCallback onPressed;

  const AnimalCard({required this.animal, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 295,
        height: 450,
        child: Stack(
          children: [
            // Фон-картинка
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Stack(
                children: [
                  Image.asset(
                    animal.photos.isNotEmpty
                        ? animal.photos[0]
                        : 'assets/find/default_pet.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ],
              ),
            ),
            // Блюр в нижней части
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    height: 83,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            // Текстовая информация
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${animal.name}, ${animal.age} ${animal.age > 1 ? 'года' : 'год'}',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    animal.breed,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FindScreen extends StatefulWidget {
  const FindScreen({super.key});

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  final CardSwiperController controller = CardSwiperController();
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _swipeWithAnimation(CardSwiperDirection direction, Duration duration) {
    Future.delayed(duration, () {
      controller.swipe(direction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 112),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Поиск',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'город',
                        style: TextStyle(
                          color: const Color(0xFF000000).withOpacity(0.7),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const FilterSettings(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/find_page/filter_button.png',
                      height: 52,
                      width: 52,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Expanded(
                child: isLoading
                    ? Center(child: CircularProgressIndicator())
                    : animals.isEmpty
                        ? Center(child: Text('No animals available'))
                        : Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              right: 40,
                              top: 40,
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                final screenWidth =
                                    MediaQuery.of(context).size.width;
                                final screenHeight =
                                    MediaQuery.of(context).size.height;

                                final cardWidth = screenWidth * 0.7867;
                                final cardHeight = screenHeight * 0.5542;

                                return SizedBox(
                                  height: cardHeight,
                                  child: CardSwiper(
                                    controller: controller,
                                    cardsCount: animals.length,
                                    numberOfCardsDisplayed: 1,
                                    backCardOffset: const Offset(0, 0),
                                    padding: const EdgeInsets.only(bottom: 32),
                                    onSwipe: _onSwipe,
                                    onUndo: _onUndo,
                                    cardBuilder: (
                                      context,
                                      index,
                                      horizontalThresholdPercentage,
                                      verticalThresholdPercentage,
                                    ) {
                                      final animal = animals[index];

                                      // Вычисляем изменения для эффекта затемнения или подсветки
                                      Color overlayColor = Colors.transparent;
                                      Widget? icon = null;

                                      if (horizontalThresholdPercentage < 0) {
                                        // Свайп влево - затемняем
                                        overlayColor =
                                            Colors.black.withOpacity(0.4);
                                        icon = Image.asset(
                                          'assets/find/dislike.png',
                                          width: 50,
                                          height: 50,
                                        );
                                      } else if (horizontalThresholdPercentage >
                                          0) {
                                        // Свайп вправо - подсвечиваем жёлтым
                                        overlayColor = Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.4);
                                        icon = Image.asset(
                                          'assets/find/like.png',
                                          width: 50,
                                          height: 50,
                                        );
                                      }

                                      return Transform(
                                        transform: Matrix4.identity()
                                          ..rotateZ(
                                              horizontalThresholdPercentage /
                                                  200 *
                                                  0.1),
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              AnimalCard(
                                                animal: animal,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PetCardFind(
                                                              animal: animal),
                                                    ),
                                                  );
                                                },
                                              ),
                                              if (icon != null)
                                                Positioned(
                                                  top: cardHeight *
                                                      0.40, // Центр по вертикали
                                                  left: cardWidth *
                                                      0.40, // Центр по горизонтали
                                                  child: Transform.scale(
                                                    scale: 1.5,
                                                    child: icon!,
                                                  ),
                                                ),
                                              Positioned.fill(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                  child: Container(
                                                    color: overlayColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
              ),
              // Нижняя панель с кнопками
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, bottom: 33, top: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RawMaterialButton(
                      onPressed: () => _swipeWithAnimation(
                          CardSwiperDirection.left,
                          Duration(milliseconds: 1000)),
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
                        final screenWidth = MediaQuery.of(context).size.width;
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
                        final screenWidth = MediaQuery.of(context).size.width;
                        return SizedBox(
                          width: screenWidth * (21 / 375),
                        );
                      },
                    ),
                    RawMaterialButton(
                      onPressed: () => _swipeWithAnimation(
                          CardSwiperDirection.right,
                          Duration(milliseconds: 500)),
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
        ),
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    if (direction == CardSwiperDirection.left ||
        direction == CardSwiperDirection.right) {
      debugPrint(
        'The card at index $previousIndex has been swiped to the ${direction == CardSwiperDirection.left ? "left" : "right"}',
      );
    }
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undone from the ${direction.name}',
    );
    return true;
  }
}
