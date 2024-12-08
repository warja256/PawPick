import 'package:flutter/material.dart';

class FilterSettings extends StatefulWidget {
  const FilterSettings({super.key});

  @override
  State<FilterSettings> createState() => _FilterSettingsState();
}

class _FilterSettingsState extends State<FilterSettings> {
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

  Color BtnFur = Colors.white;
  Color TextFur = const Color(0xFF000000);
  FontWeight WeightFur = FontWeight.normal;
  String PathFur = 'assets/filters_pics/filters_next/short_icon_yellow.png';

  Color BtnLong = Colors.white;
  Color TextLong = const Color(0xFF000000);
  FontWeight WeightLong = FontWeight.normal;
  String PathLong = 'assets/filters_pics/filters_next/long_icon_yellow.png';

  Color borderColor = const Color(0x0f575CEE);
  var WidthBorder = 1.0;

  Color borderColor2 = const Color(0x0f575CEE);
  var WidthBorder2 = 1.0;

  Color borderColor3 = const Color(0x0f575CEE);
  var WidthBorder3 = 1.0;

  Color borderColor4 = const Color(0x0f575CEE);
  var WidthBorder4 = 1.0;

  Color borderColor5 = const Color(0x0f575CEE);
  var WidthBorder5 = 1.0;

  Color borderColor6 = const Color(0x0f575CEE);
  var WidthBorder6 = 1.0;

  Color Btn1 = Colors.white;
  Color Btn2 = Colors.white;
  Color Btn3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 16),
              child: Row(
                children: [
                  const Text(
                    "Фильтр",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 122,
                  ),
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
                      child: Text(
                        "Назад",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Theme.of(context).primaryColor,
                        ),
                      ))
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: const Text(
                    "Поставьте все настройки поиска, которые важны для вас. Это поможет быстрее найти идеального питомца.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ))),
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
                          backgroundColor: WidgetStateProperty.all(buttonColor),
                          fixedSize:
                              WidgetStateProperty.all(const Size(140, 45)),
                          side: WidgetStateProperty.all(const BorderSide(
                            color: Color(0x0f575CEE), // Цвет границы
                            width: 1, // Толщина границы
                          )),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Радиус скругления
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
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Радиус скругления
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
                            textWeightMale = textWeightMale == FontWeight.normal
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
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Радиус скругления
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
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Радиус скругления
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
                              buttonColorCalm = buttonColorCalm == Colors.white
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 16),
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 16),
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22, right: 17),
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18, right: 17),
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Радиус скругления
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 17),
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
                            backgroundColor: WidgetStateProperty.all(btnYoung),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            fixedSize:
                                WidgetStateProperty.all(const Size(89, 45)),
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
                            backgroundColor: WidgetStateProperty.all(btnAdult),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            fixedSize:
                                WidgetStateProperty.all(const Size(89, 45)),
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
                            shape:
                                WidgetStateProperty.all(RoundedRectangleBorder(
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
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Шерсть',
                      textAlign: TextAlign.left,
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
                              BtnFur = BtnFur == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Colors.white;
                              WeightFur = WeightFur == FontWeight.normal
                                  ? FontWeight.bold
                                  : FontWeight.normal;
                              TextFur = TextFur == const Color(0xFF000000)
                                  ? Colors.white
                                  : const Color(0xFF000000);
                              PathFur = PathFur ==
                                      'assets/filters_pics/filters_next/short_icon_yellow.png'
                                  ? 'assets/filters_pics/filters_next/short_icon_white.png'
                                  : 'assets/filters_pics/filters_next/short_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(BtnFur),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  PathFur,
                                  height: 28,
                                  width: 17,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Короткая',
                                  style: TextStyle(
                                    color: TextFur,
                                    fontSize: 14,
                                    height: 1.5,
                                    fontWeight: WeightFur,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              BtnLong = BtnLong == Colors.white
                                  ? Theme.of(context).primaryColor
                                  : Colors.white;
                              WeightLong = WeightLong == FontWeight.normal
                                  ? FontWeight.bold
                                  : FontWeight.normal;
                              TextLong = TextLong == const Color(0xFF000000)
                                  ? Colors.white
                                  : const Color(0xFF000000);
                              PathLong = PathLong ==
                                      'assets/filters_pics/filters_next/long_icon_yellow.png'
                                  ? 'assets/filters_pics/filters_next/long_icon_white.png'
                                  : 'assets/filters_pics/filters_next/long_icon_yellow.png';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(BtnLong),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  PathLong,
                                  height: 28,
                                  width: 17,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Длинная',
                                  style: TextStyle(
                                    color: TextLong,
                                    fontSize: 14,
                                    height: 1.5,
                                    fontWeight: WeightLong,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Окрас',
                      textAlign: TextAlign.left,
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
                                borderColor =
                                    borderColor == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder = WidthBorder == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor, // Цвет границы
                                width: WidthBorder, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                borderColor2 =
                                    borderColor2 == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder2 = WidthBorder2 == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFFF5F5DC)),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor2, // Цвет границы
                                width: WidthBorder2, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                borderColor3 =
                                    borderColor3 == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder3 = WidthBorder2 == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.black),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor3, // Цвет границы
                                width: WidthBorder3, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                borderColor4 =
                                    borderColor4 == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder4 = WidthBorder4 == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFFFFA959)),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor4, // Цвет границы
                                width: WidthBorder4, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                borderColor5 =
                                    borderColor5 == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder5 = WidthBorder5 == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFF946850)),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor5, // Цвет границы
                                width: WidthBorder5, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                        const SizedBox(
                          width: 14,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                borderColor6 =
                                    borderColor6 == const Color(0x0f575CEE)
                                        ? const Color(0xFFEEB738)
                                        : const Color(0x0f575CEE);
                                WidthBorder6 = WidthBorder6 == 1 ? 6 : 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xff9D9D9D)),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(89, 45)),
                              side: WidgetStateProperty.all(BorderSide(
                                color: borderColor6, // Цвет границы
                                width: WidthBorder6, // Толщина границы
                              )),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: const Row()),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Дополнительно',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                          maxWidth: 40,
                          maxHeight: 40,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Btn1 = Btn1 == Colors.white
                                    ? const Color(0xFFEEB738)
                                    : Colors.white;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Btn1),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(40, 40)),
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
                            child: const Row()),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Для семьи с детьми",
                        style: TextStyle(
                            fontSize: 14, height: 1.5, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                          maxWidth: 40,
                          maxHeight: 40,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Btn2 = Btn2 == Colors.white
                                    ? const Color(0xFFEEB738)
                                    : Colors.white;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Btn2),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(40, 40)),
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
                            child: const Row()),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Ладит с животными",
                        style: TextStyle(
                            fontSize: 14, height: 1.5, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                          maxWidth: 40,
                          maxHeight: 40,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Btn3 = Btn3 == Colors.white
                                    ? const Color(0xFFEEB738)
                                    : Colors.white;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Btn3),
                              fixedSize:
                                  WidgetStateProperty.all(const Size(40, 40)),
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
                            child: const Row()),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Есть прививки",
                        style: TextStyle(
                            fontSize: 14, height: 1.5, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Placeholder(),
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
                  "Сохранить",
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
        )
      ])),
    );
  }
}
