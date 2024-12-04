import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  // Переменные для хранения текущего состояния цвета кнопки и текста
  Color buttonColor = Colors.white;
  Color buttonColorDog = Colors.white;
  Color textColor = const Color(0xFF000000);
  Color textColorDog = const Color(0xFF000000);
  FontWeight textWeight = FontWeight.normal;
  FontWeight textWeightDog = FontWeight.normal;
  String imgCatPath = 'assets/filters_pics/cat_icon_yellow.png';
  String imgDogPath = 'assets/filters_pics/dog_icon_yellow.png';

  Color buttonColorMale = Colors.white;
  Color buttonColorFemale = Colors.white;
  Color textColorMale = const Color(0xFF000000);
  Color textColorDogFemale = const Color(0xFF000000);
  FontWeight textWeightMale = FontWeight.normal;
  FontWeight textWeightFemale = FontWeight.normal;
  String imgMalePath = 'assets/filters_pics/male_icon_yellow.png';
  String imgFemalePath = 'assets/filters_pics/female_icon_yellow.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Учитывает безопасную область
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 40,
                    right: 38,
                    top: 16), // Минимальный top, SafeArea добавит остальное
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/btn_back.png',
                      height: 52,
                      width: 52,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "Пропустить",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32), // Отступ между Row и Column
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Выравнивание в Column
                  children: [
                    const Text(
                      "Кого вы ищете?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "Выберите параметры, которые важны для вас. Это поможет быстрее найти идеального питомца.",
                      style: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.7),
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Тип",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Меняем цвет кнопки и текста при нажатии
                              buttonColor = buttonColor == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Colors.white;
                              textColor = textColor == const Color(0xFF000000)
                                  ? Colors.white
                                  : const Color(0xFF000000);
                              textWeight = textWeight == FontWeight.normal
                                  ? FontWeight.bold
                                  : FontWeight.normal;
                              imgCatPath = imgCatPath ==
                                      'assets/filters_pics/cat_icon_yellow.png'
                                  ? 'assets/filters_pics/cat_icon_white.png'
                                  : 'assets/filters_pics/cat_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(buttonColor),
                            fixedSize:
                                WidgetStateProperty.all(const Size(140, 45)),
                            side: WidgetStateProperty.all(const BorderSide(
                              color: Color(0x0f575CEE), // Цвет границы
                              width: 1, // Толщина границы
                            )),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                imgCatPath,
                                height: 20,
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Кошка',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  height: 1.5,
                                  fontWeight: textWeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Меняем цвет кнопки и текста при нажатии
                              buttonColorDog = buttonColorDog == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Colors.white;
                              textColorDog =
                                  textColorDog == const Color(0xFF000000)
                                      ? Colors.white
                                      : const Color(0xFF000000);
                              textWeightDog = textWeightDog == FontWeight.normal
                                  ? FontWeight.bold
                                  : FontWeight.normal;
                              imgDogPath = imgDogPath ==
                                      'assets/filters_pics/dog_icon_yellow.png'
                                  ? 'assets/filters_pics/dog_icon_white.png'
                                  : 'assets/filters_pics/dog_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(buttonColorDog),
                            fixedSize:
                                WidgetStateProperty.all(const Size(140, 45)),
                            side: WidgetStateProperty.all(const BorderSide(
                              color: Color(0x0f575CEE), // Цвет границы
                              width: 1, // Толщина границы
                            )),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                imgDogPath,
                                height: 20,
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Собака',
                                style: TextStyle(
                                  color: textColorDog,
                                  fontSize: 14,
                                  height: 1.5,
                                  fontWeight: textWeightDog,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Пол питомца",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Меняем цвет кнопки и текста при нажатии
                              buttonColorMale = buttonColorMale == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Colors.white;
                              textColorMale =
                                  textColorMale == const Color(0xFF000000)
                                      ? Colors.white
                                      : const Color(0xFF000000);
                              textWeightMale =
                                  textWeightMale == FontWeight.normal
                                      ? FontWeight.bold
                                      : FontWeight.normal;
                              imgMalePath = imgMalePath ==
                                      'assets/filters_pics/male_icon_yellow.png'
                                  ? 'assets/filters_pics/male_icon_white.png'
                                  : 'assets/filters_pics/male_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(buttonColorMale),
                            fixedSize:
                                WidgetStateProperty.all(const Size(140, 45)),
                            side: WidgetStateProperty.all(const BorderSide(
                              color: Color(0x0f575CEE), // Цвет границы
                              width: 1, // Толщина границы
                            )),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                imgMalePath,
                                height: 20,
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Мальчик',
                                style: TextStyle(
                                  color: textColorMale,
                                  fontSize: 14,
                                  height: 1.5,
                                  fontWeight: textWeightMale,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Меняем цвет кнопки и текста при нажатии
                              buttonColorFemale =
                                  buttonColorFemale == Colors.white
                                      ? Theme.of(context).primaryColor
                                      : Colors.white;
                              textColorDogFemale =
                                  textColorDogFemale == const Color(0xFF000000)
                                      ? Colors.white
                                      : const Color(0xFF000000);
                              textWeightFemale =
                                  textWeightFemale == FontWeight.normal
                                      ? FontWeight.bold
                                      : FontWeight.normal;
                              imgFemalePath = imgFemalePath ==
                                      'assets/filters_pics/female_icon_yellow.png'
                                  ? 'assets/filters_pics/female_icon_white.png'
                                  : 'assets/filters_pics/female_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(buttonColorFemale),
                            fixedSize:
                                WidgetStateProperty.all(const Size(140, 45)),
                            side: WidgetStateProperty.all(const BorderSide(
                              color: Color(0x0f575CEE), // Цвет границы
                              width: 1, // Толщина границы
                            )),
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                imgFemalePath,
                                height: 20,
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Девочка',
                                style: TextStyle(
                                  color: textColorDogFemale,
                                  fontSize: 14,
                                  height: 1.5,
                                  fontWeight: textWeightFemale,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
