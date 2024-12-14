import 'package:flutter/material.dart';
import '../auth/sign_in.dart';
import '../registration/sign_up.dart';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'donate_sucseed.dart';

class DonateScreen extends StatefulWidget {
  const DonateScreen({super.key});

  @override
  State<DonateScreen> createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  bool _isButton1Selected = false;
  bool _isButton2Selected = false;
  bool _isButton3Selected = false;
  bool _isTextFieldSelected = false;

  void _toggleButton1() {
    setState(() {
      _isButton1Selected = !_isButton1Selected;
      _isButton2Selected = false;
      _isButton3Selected = false;
      _isTextFieldSelected = false;
    });
  }

  void _toggleButton2() {
    setState(() {
      _isButton2Selected = !_isButton2Selected;
      _isButton1Selected = false;
      _isButton3Selected = false;
      _isTextFieldSelected = false;
    });
  }

  void _toggleButton3() {
    setState(() {
      _isButton3Selected = !_isButton3Selected;
      _isButton2Selected = false;
      _isButton1Selected = false;
      _isTextFieldSelected = false;
    });
  }

  void _toggleTextField() {
    setState(() {
      _isTextFieldSelected = !_isTextFieldSelected;
      _isButton1Selected = false;
      _isButton2Selected = false;
      _isButton3Selected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    RegistrationScreen(),
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
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                      child: Container(),
                    ),
                  ],
                ),
                const SizedBox(height: 119),
                const Text(
                  'Помощь приютам',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 22),
                const Text(
                  'Поддержите питомцев и их приюты!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 22),
                const Text(
                  'Вы можете пожертвовать деньги приюту, в котором содержится выбранное животное!',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 23),
                const Text(
                  'Пожертвовать:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _toggleButton1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isButton1Selected
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: _isButton1Selected
                                ? Theme.of(context).primaryColor
                                : Color.fromRGBO(232, 230, 234, 1),
                            width: 1,
                          ),
                        ),
                        minimumSize: Size(89, 45),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: _isButton1Selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: _isButton1Selected
                                  ? Colors.white
                                  : Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    ElevatedButton(
                      onPressed: _toggleButton2,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isButton2Selected
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: _isButton2Selected
                                ? Theme.of(context).primaryColor
                                : Color.fromRGBO(232, 230, 234, 1),
                            width: 1,
                          ),
                        ),
                        minimumSize: Size(89, 45),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "100",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: _isButton2Selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: _isButton2Selected
                                  ? Colors.white
                                  : Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    ElevatedButton(
                      onPressed: _toggleButton3,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isButton3Selected
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: _isButton3Selected
                                ? Theme.of(context).primaryColor
                                : Color.fromRGBO(232, 230, 234, 1),
                            width: 1,
                          ),
                        ),
                        minimumSize: Size(89, 45),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "200",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: _isButton3Selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: _isButton3Selected
                                  ? Colors.white
                                  : Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'или своя сумма:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(width: 24),
                    Container(
                      width: 160,
                      height: 45,
                      child: TextField(
                        onTap: _toggleTextField,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(color: Color.fromRGBO(232, 230, 234, 1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: _isTextFieldSelected
                                  ? Theme.of(context).primaryColor
                                  : Color.fromRGBO(232, 230, 234, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                const DonateSucseedScreen(),
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
                    minimumSize: const Size(220, 90),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Оплатить',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/donation/sbp_logo.png',
                        height: 58,
                        width: 119,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
