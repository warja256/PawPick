import 'package:flutter/material.dart';
import 'package:paw_pick/profile/profile.dart';
import 'package:paw_pick/favourites/favourites.dart';
import 'package:paw_pick/find/find.dart';

class HomeScreenPage {
  final Widget icon;
  final Widget activeIcon;
  final Widget widget;

  HomeScreenPage({
    required this.icon,
    required this.activeIcon,
    required this.widget,
  });
}

final pages = <HomeScreenPage>[
  HomeScreenPage(
    icon: Image.asset(
      'assets/menu/cards.png',
      width: 24,
      height: 24,
    ),
    activeIcon: Image.asset(
      'assets/menu/cards_active.png',
      width: 24,
      height: 24,
    ),
    widget: const FindScreen(), // Используйте HomeScreen для главной страницы
  ),
  HomeScreenPage(
    icon: Image.asset(
      'assets/menu/favs.png',
      width: 24,
      height: 24,
    ),
    activeIcon: Image.asset(
      'assets/menu/favs_active.png',
      width: 24,
      height: 24,
    ),
    widget: const FavScreen(), // Используйте FavScreen для страницы "Избранное"
  ),
  HomeScreenPage(
    icon: Image.asset(
      'assets/menu/profile.png',
      width: 24,
      height: 24,
    ),
    activeIcon: Image.asset(
      'assets/menu/profile_active.png',
      width: 24,
      height: 24,
    ),
    widget:
        const ProfileScreen(), // Используйте ProfileScreen для страницы "Профиль"
  ),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: pages[_selectedIndex].widget,
            ),
            Container(
              height: 60, // Высота нижней панели навигации
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType
                    .fixed, // Фиксированный тип для равномерного распределения
                backgroundColor: Colors.transparent, // Прозрачный фон
                elevation: 0, // Убираем тень
                items: pages.map((page) {
                  return BottomNavigationBarItem(
                    icon: page.icon,
                    activeIcon: page.activeIcon,
                    label: '', // Удаляем подписи
                  );
                }).toList(),
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Colors.grey,
                onTap: _onItemTapped,
                showSelectedLabels: false, // Скрываем выбранные подписи
                showUnselectedLabels: false, // Скрываем невыбранные подписи
              ),
            ),
          ],
        ),
      ),
    );
  }
}