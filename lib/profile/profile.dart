import 'package:flutter/material.dart';
import 'package:paw_pick/ai_assistant/onboarding_ai_1.dart';
import 'package:paw_pick/homescreen/homescreen.dart';
import 'package:paw_pick/profile/profile_edit.dart';
import 'package:paw_pick/profile/exit_dialog.dart';
import 'package:paw_pick/onboarding/onboarding.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:paw_pick/profile/profile_data.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileData _profileData = ProfileData(
    firstName: 'Иван',
    lastName: 'Иванов',
    email: 'ivanov@example.com',
    city: 'Москва',
    birthDate: '01.01.1990',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Профиль',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    height: 1.5,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/profile/photo.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _profileData.firstName,
                      style: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.7),
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _profileData.lastName,
                      style: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.7),
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Почта',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _profileData.email,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Дата рождения',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _profileData.birthDate,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Город',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _profileData.city,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                        fontSize: 18.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ProfileEditScreen(
                                profileData: _profileData,
                                onSave: (updatedProfileData) {
                                  setState(() {
                                    _profileData = updatedProfileData;
                                  });
                                },
                              ),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          'Изменить профиль',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: 230,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF54BCC3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => const AiFirstOnboarding(),
                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            minimumSize: const Size(double.infinity, 64),
                          ),
                          child: const Text(
                            'AI ассистент',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          'assets/ai_pics/robot_2.png',
                          height: 35,
                          width: 37,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: 140,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF853A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return ExitDialog(
                            onConfirm: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => const OnboardingScreen(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    child: const Text(
                      'Выход',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
