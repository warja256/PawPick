import 'package:flutter/material.dart';
import 'package:paw_pick/filters/filters.dart';
import 'package:paw_pick/form/about3.dart';
import 'package:paw_pick/form/date.dart';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'package:paw_pick/onboarding/onboarding.dart';

class NamedDate extends StatefulWidget {
  const NamedDate({super.key});

  @override
  State<NamedDate> createState() => _NamedDateState();
}

class _NamedDateState extends State<NamedDate> {
  final TextEditingController _nameController = TextEditingController();
  bool _isNameError = false;

  void _validateName() {
    setState(() {
      _isNameError = _nameController.text.isEmpty;
    });
  }

  final TextEditingController _surnameController = TextEditingController();
  bool _isSurnameError = false;

  void _validateSurname() {
    setState(() {
      _isSurnameError = _surnameController.text.isEmpty;
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
                                    const WhoScreen(),
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
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Расскажите \nо себе",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      height: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    'assets/form/user_photo.png',
                    width: 99,
                    height: 99,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                const Text(
                  'Имя',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _nameController,
                  onChanged: (value) => _validateName(),
                  decoration: InputDecoration(
                    hintText: 'Ваше имя',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isNameError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isNameError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isNameError
                            ? Color(0xFFE94057)
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    errorText: _isNameError ? 'Необходимо ввести имя' : null,
                    errorStyle: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFE94057),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 9,
                ),
                const Text(
                  'Фамилия',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _surnameController,
                  onChanged: (value) => _validateSurname(),
                  decoration: InputDecoration(
                    hintText: 'Ваша фамилия',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color:
                            _isSurnameError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color:
                            _isSurnameError ? Color(0xFFE94057) : Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: _isSurnameError
                            ? Color(0xFFE94057)
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    errorText:
                        _isSurnameError ? 'Необходимо ввести фамилию' : null,
                    errorStyle: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFE94057),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 27,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return DateModal(
                            onConfirm: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const NamedDate(),
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
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFDF8EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(double.infinity, 56),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/form/calendar.png',
                          width: 18,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 19.5,
                        ),
                        Text(
                          'Укажите дату рождения',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 71,
                ),
                ElevatedButton(
                  onPressed: () {
                    _validateName();
                    _validateSurname();
                    if (!_isNameError && !_isSurnameError) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Filters(),
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

class DateModal extends StatefulWidget {
  final VoidCallback onConfirm;

  const DateModal({Key? key, required this.onConfirm}) : super(key: key);

  @override
  State<DateModal> createState() => _DateModalState();
}

class _DateModalState extends State<DateModal> {
  String _selectedDay = '1';
  String _selectedMonth = '1';
  String _selectedYear = '2000';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.white,
      child: Container(
        width: 375,
        height: 447,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Укажите дату рождения',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 91, // 25% ширины экрана для дня
                    height: 69,
                    child: _buildDropdown(
                      items:
                          List.generate(31, (index) => (index + 1).toString()),
                      value: _selectedDay,
                      onChanged: (value) {
                        setState(() {
                          _selectedDay = value!;
                        });
                      },
                      label: 'день',
                    ),
                  ),
                  const SizedBox(width: 22),
                  SizedBox(
                    width: 91,
                    height: 69,
                    child: _buildDropdown(
                      items:
                          List.generate(12, (index) => (index + 1).toString()),
                      value: _selectedMonth,
                      onChanged: (value) {
                        setState(() {
                          _selectedMonth = value!;
                        });
                      },
                      label: 'месяц',
                    ),
                  ),
                  const SizedBox(width: 22),
                  SizedBox(
                    width: 91,
                    height: 69,
                    child: _buildDropdown(
                      items: List.generate(
                          100, (index) => (2000 - index).toString()),
                      value: _selectedYear,
                      onChanged: (value) {
                        setState(() {
                          _selectedYear = value!;
                        });
                      },
                      label: 'год',
                    ),
                  ),
                  // 8% padding
                ],
              ),
              const SizedBox(height: 74),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Filters(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                  // Закрытие диалога
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(295, 56),
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
              const SizedBox(height: 55),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required List<String> items,
    required String value,
    required ValueChanged<String?> onChanged,
    required String label,
  }) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF847C7C),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: DropdownButton<String>(
            value: value,
            items: items.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            underline: const SizedBox(),
            isExpanded: true,
          ),
        ),
      ],
    );
  }
}
