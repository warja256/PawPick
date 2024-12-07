import 'package:flutter/material.dart';
import 'package:paw_pick/filters/filters_next.dart';

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

  Color buttonColorCalm = Colors.white;
  Color buttonColorActive = Colors.white;
  Color textColorCalm = const Color(0xFF000000);
  Color textColorActive = const Color(0xFF000000);
  FontWeight textWeightCalm = FontWeight.normal;
  FontWeight textWeightActive = FontWeight.normal;
  String imgCalmPath = 'assets/filters_pics/calm_icon_yellow.png';
  String imgActivePath = 'assets/filters_pics/active_icon_yellow.png';

  Color buttonColorSmall = Colors.white;
  Color buttonColorMedium = Colors.white;
  Color buttonColorLarge = Colors.white;
  Color textColorSmall = const Color(0xFF000000);
  Color textColorMedium = const Color(0xFF000000);
  Color textColorLarge = const Color(0xFF000000);
  FontWeight textWeightSmall = FontWeight.normal;
  FontWeight textWeightMedium = FontWeight.normal;
  FontWeight textWeightLarge = FontWeight.normal;
  String imgSmallPath = 'assets/filters_pics/small_icon_yellow.png';
  String imgMediumPath = 'assets/filters_pics/medium_icon_yellow.png';
  String imgLargePath = 'assets/filters_pics/large_icon_yellow.png';

  Color buttonColorYoung = Colors.white;
  Color buttonColorAdult = Colors.white;
  Color buttonColorOld = Colors.white;
  Color textColorYoung = const Color(0xFF000000);
  Color textColorAdult = const Color(0xFF000000);
  Color textColorOld = const Color(0xFF000000);
  FontWeight textWeightYoung = FontWeight.normal;
  FontWeight textWeightAdult = FontWeight.normal;
  FontWeight textWeightOld = FontWeight.normal;

  String imgYoungPath = 'assets/filters_pics/young_icon_black.png';
  Color btnYoung = Colors.white;

  String imgAdultPath = 'assets/filters_pics/adult_icon_black.png';
  Color btnAdult = Colors.white;

  String imgOldPath = 'assets/filters_pics/old_icon_black.png';
  Color btnOld = Colors.white;

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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const Placeholder(),
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
                        'assets/btn_back.png',
                        height: 52,
                        width: 52,
                        fit: BoxFit.contain,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Placeholder(),
                          ),
                        );
                      },
                      child: Text(
                        "Пропустить",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          height: 1.5,
                        ),
                      ),
                    )
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
                        const SizedBox(
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
              const SizedBox(
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
                        const SizedBox(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Характер",
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
                                buttonColorCalm =
                                    buttonColorCalm == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Colors.white;
                                textColorCalm =
                                    textColorCalm == const Color(0xFF000000)
                                        ? Colors.white
                                        : const Color(0xFF000000);
                                textWeightCalm =
                                    textWeightCalm == FontWeight.normal
                                        ? FontWeight.bold
                                        : FontWeight.normal;
                                imgCalmPath = imgCalmPath ==
                                        'assets/filters_pics/calm_icon_yellow.png'
                                    ? 'assets/filters_pics/calm_icon_white.png'
                                    : 'assets/filters_pics/calm_icon_yellow.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(buttonColorCalm),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(140, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgCalmPath,
                                    height: 20,
                                    width: 18,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Спокойный',
                                      style: TextStyle(
                                        color: textColorCalm,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: textWeightCalm,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Меняем цвет кнопки и текста при нажатии
                                buttonColorActive =
                                    buttonColorActive == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Colors.white;
                                textColorActive =
                                    textColorActive == const Color(0xFF000000)
                                        ? Colors.white
                                        : const Color(0xFF000000);
                                textWeightActive =
                                    textWeightActive == FontWeight.normal
                                        ? FontWeight.bold
                                        : FontWeight.normal;
                                imgActivePath = imgActivePath ==
                                        'assets/filters_pics/active_icon_yellow.png'
                                    ? 'assets/filters_pics/active_icon_white.png'
                                    : 'assets/filters_pics/active_icon_yellow.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(buttonColorActive),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(140, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgActivePath,
                                    height: 28,
                                    width: 17,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Активный',
                                      style: TextStyle(
                                        color: textColorActive,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: textWeightActive,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Размер",
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
                                buttonColorSmall =
                                    buttonColorSmall == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Colors.white;
                                textColorSmall =
                                    textColorSmall == const Color(0xFF000000)
                                        ? Colors.white
                                        : const Color(0xFF000000);
                                textWeightSmall =
                                    textWeightSmall == FontWeight.normal
                                        ? FontWeight.bold
                                        : FontWeight.normal;
                                imgSmallPath = imgSmallPath ==
                                        'assets/filters_pics/small_icon_yellow.png'
                                    ? 'assets/filters_pics/small_icon_white.png'
                                    : 'assets/filters_pics/small_icon_yellow.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(buttonColorSmall),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 22, right: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgSmallPath,
                                    height: 23,
                                    width: 19,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'S',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: textColorSmall,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: textWeightSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Меняем цвет кнопки и текста при нажатии
                                buttonColorMedium =
                                    buttonColorMedium == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Colors.white;
                                textColorMedium =
                                    textColorMedium == const Color(0xFF000000)
                                        ? Colors.white
                                        : const Color(0xFF000000);
                                textWeightMedium =
                                    textWeightMedium == FontWeight.normal
                                        ? FontWeight.bold
                                        : FontWeight.normal;
                                imgMediumPath = imgMediumPath ==
                                        'assets/filters_pics/medium_icon_yellow.png'
                                    ? 'assets/filters_pics/medium_icon_white.png'
                                    : 'assets/filters_pics/medium_icon_yellow.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(buttonColorMedium),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18, right: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgMediumPath,
                                    height: 32,
                                    width: 26,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'M',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: textColorMedium,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: textWeightMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Меняем цвет кнопки и текста при нажатии
                                buttonColorLarge =
                                    buttonColorLarge == Colors.white
                                        ? Theme.of(context).primaryColor
                                        : Colors.white;
                                textColorLarge =
                                    textColorLarge == const Color(0xFF000000)
                                        ? Colors.white
                                        : const Color(0xFF000000);
                                textWeightLarge =
                                    textWeightLarge == FontWeight.normal
                                        ? FontWeight.bold
                                        : FontWeight.normal;
                                imgLargePath = imgLargePath ==
                                        'assets/filters_pics/large_icon_yellow.png'
                                    ? 'assets/filters_pics/large_icon_white.png'
                                    : 'assets/filters_pics/large_icon_yellow.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(buttonColorLarge),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgLargePath,
                                    height: 41,
                                    width: 33,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'L',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: textColorLarge,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: textWeightLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Возраст",
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
                                btnYoung = btnYoung == Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Colors.white;
                                imgYoungPath = imgYoungPath ==
                                        'assets/filters_pics/young_icon_white.png'
                                    ? 'assets/filters_pics/young_icon_black.png'
                                    : 'assets/filters_pics/young_icon_white.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(btnYoung),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgYoungPath,
                                    height: 28,
                                    width: 56,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                btnAdult = btnAdult == Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Colors.white;
                                imgAdultPath = imgAdultPath ==
                                        'assets/filters_pics/adult_icon_white.png'
                                    ? 'assets/filters_pics/adult_icon_black.png'
                                    : 'assets/filters_pics/adult_icon_white.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(btnAdult),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgAdultPath,
                                    height: 28,
                                    width: 56,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                btnOld = btnOld == Colors.white
                                    ? Theme.of(context).primaryColor
                                    : Colors.white;
                                imgOldPath = imgOldPath ==
                                        'assets/filters_pics/old_icon_white.png'
                                    ? 'assets/filters_pics/old_icon_black.png'
                                    : 'assets/filters_pics/old_icon_white.png';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(btnOld),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(const BorderSide(
                                color: Color(0x0f575CEE), // Цвет границы
                                width: 1, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgOldPath,
                                    height: 27,
                                    width: 56,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 49,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const FiltersNext(),
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(double.infinity, 56),
                  ),
                  child: const Text(
                    "Продолжить",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
