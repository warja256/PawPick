import 'package:flutter/material.dart';
import 'package:paw_pick/form/about1.dart';
import 'package:paw_pick/form/about3.dart';

class WhereAt extends StatefulWidget {
  const WhereAt({super.key});

  @override
  State<WhereAt> createState() => _WhereAtState();
}

class _WhereAtState extends State<WhereAt> {
  final TextEditingController _cityController = TextEditingController();
  bool _isCityError = false;

  void _validateCity() {
    setState(() {
      _isCityError = _cityController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 38, top: 16),
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
                                    const TellAbout(),
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
                const SizedBox(height: 32),
                const Text(
                  'Откуда вы?',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 73),
                const Text(
                  'Укажите свой город',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _cityController,
                  onChanged: (value) => _validateCity(),
                  decoration: InputDecoration(
                    hintText: 'Ваш город',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isCityError
                            ? Color(0xFFE94057)
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    errorText: _isCityError ? 'Необходимо ввести город' : null,
                    errorStyle: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFE94057),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 380),
                ElevatedButton(
                  onPressed: () {
                    _validateCity();
                    if (!_isCityError) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const WhoScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    }
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
