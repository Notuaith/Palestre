import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/calcettoScreen/calcetto.dart';
import 'package:palestre/screens/gymScreen/gym.dart';
import 'package:palestre/screens/HomeScreen/homepage.dart';
import 'package:palestre/screens/padelScreen/padel.dart';
import 'package:palestre/screens/piscinaScreen/piscina.dart';


class MainPage extends StatefulWidget {
  static String routeName = "/search";
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
    const Calcetto(),
    const Gym(),
    const Piscina(),
    const Padel()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _children[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 6, 0, 34),
      selectedItemColor: Color.fromARGB(255, 17, 146, 252),
      selectedLabelStyle: TextStyle(color: Colors.white, fontSize: 12),
      unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 12),
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_soccer),
          label: 'Calcetto',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Gym',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pool),
          label: 'Piscina',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_tennis),
          label: 'Padel',
        ),
      ],
      iconSize: 30.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}
