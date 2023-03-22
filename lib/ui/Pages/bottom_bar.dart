import 'package:berifood_app/ui/Pages/challenge_page.dart';
import 'package:berifood_app/ui/introduction/food_page_restoran.dart';
import 'package:berifood_app/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'food_screen.dart';
import 'home_screen.dart';
import 'voucher_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ProfilePage(),
    const FoodPage(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primary,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFB7B7B7),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: 'null',
          ),
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_trophy_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_trophy_regular),
              label: 'null'),
          const BottomNavigationBarItem(
              icon: const Icon(
                  FluentSystemIcons.ic_fluent_people_community_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_people_community_regular),
              label: 'Tickets'),
          const BottomNavigationBarItem(
              icon: const Icon(
                  FluentSystemIcons.ic_fluent_document_footer_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_document_footer_regular),
              label: 'Profile'),
        ],
      ),
    );
  }
}
