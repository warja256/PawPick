import 'package:flutter/material.dart';
import 'package:paw_pick/filters/filters.dart';

//добавить валидацию полей нового пароля если надо?

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 70),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Text("PAWPICK",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    height: 1.5,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              alignment: Alignment.centerLeft,
              child: const Text("Восстановление пароля",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Новый пароль',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 335,
                    height: 56,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Подтвердите пароль',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 335,
                    height: 56,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Filters(),
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
                  "Войти",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
