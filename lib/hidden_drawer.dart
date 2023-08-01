import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:sidebar_modern/pages/home_page.dart';
import 'package:sidebar_modern/pages/second_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final mySelectedTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: Colors.white,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Homepage',
            baseStyle: TextStyle(
              fontSize: 18,
            ),
            selectedStyle: mySelectedTextStyle,
            colorLineSelected: Colors.white),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Secondpage',
            baseStyle: TextStyle(
              fontSize: 18,
            ),
            selectedStyle: mySelectedTextStyle,
            colorLineSelected: Colors.white),
        SecondPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.indigo.shade700,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
    );
  }
}
