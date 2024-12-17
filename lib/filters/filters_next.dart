import 'package:flutter/material.dart';
import 'package:paw_pick/filters/filters.dart';
import 'package:paw_pick/homescreen/homescreen.dart';

class FiltersNext extends StatefulWidget {
  const FiltersNext({super.key});

  @override
  State<FiltersNext> createState() => _FiltersNextState();
}

class _FiltersNextState extends State<FiltersNext> {
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
                                    const Filters(),
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Шерсть',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 14, right: 16),
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
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Радиус скругления
                              )),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 14, right: 16),
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
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Окрас',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Дополнительно',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
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
                    "Найти питомца",
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
