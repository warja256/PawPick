import 'package:flutter/material.dart';
import 'package:paw_pick/find/find.dart';
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
  Color btn1Color = Colors.white;
  Color btn2Color = Colors.white;
  Color btn3Color = Colors.white;
  bool isTextFieldSelected = false;
  String? selectedAmount;
  String? errorMessage;
  final TextEditingController _textController = TextEditingController();

  void _onButtonPressed(String cost) {
    setState(() {
      selectedAmount = cost;
      if (cost == '50') {
        btn1Color = Theme.of(context).primaryColor;
        btn2Color = Colors.white;
        btn3Color = Colors.white;
        isTextFieldSelected = false;
      } else if (cost == '100') {
        btn2Color = Theme.of(context).primaryColor;
        btn1Color = Colors.white;
        btn3Color = Colors.white;
        isTextFieldSelected = false;
      } else if (cost == '200') {
        btn3Color = Theme.of(context).primaryColor;
        btn1Color = Colors.white;
        btn2Color = Colors.white;
        isTextFieldSelected = false;
      }
      errorMessage = null;
    });
  }

  void _toggleTextField() {
    setState(() {
      isTextFieldSelected = !isTextFieldSelected;
      if (isTextFieldSelected) {
        btn1Color = Colors.white;
        btn2Color = Colors.white;
        btn3Color = Colors.white;
        selectedAmount = null;
      }
    });
  }

  void _validateAndProceed() {
    setState(() {
      if (selectedAmount == null && _textController.text.isEmpty) {
        errorMessage = 'Пожалуйста, выберите сумму или введите свою сумму.';
      } else {
        errorMessage = null;
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const DonateSucseedScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      }
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
                      onPressed: () => _onButtonPressed('50'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btn1Color,
                        fixedSize: const Size(89, 45),
                        side: const BorderSide(
                          color: Color(0xffE8E6EA),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: btn1Color == Colors.white
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: btn1Color == Colors.white
                                  ? Color.fromRGBO(132, 132, 132, 1)
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed('100'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btn2Color,
                        fixedSize: const Size(89, 45),
                        side: const BorderSide(
                          color: Color(0xffE8E6EA),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "100",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: btn2Color == Colors.white
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: btn2Color == Colors.white
                                  ? Color.fromRGBO(132, 132, 132, 1)
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed('200'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btn3Color,
                        fixedSize: const Size(89, 45),
                        side: const BorderSide(
                          color: Color(0xffE8E6EA),
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "200",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: btn3Color == Colors.white
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          Text(
                            "рублей",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: btn3Color == Colors.white
                                  ? Color.fromRGBO(132, 132, 132, 1)
                                  : Colors.white,
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
                      width: 140,
                      height: 45,
                      child: TextField(
                        controller: _textController,
                        onTap: _toggleTextField,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: isTextFieldSelected
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
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
                  onPressed: _validateAndProceed,
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
                if (errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      errorMessage!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
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