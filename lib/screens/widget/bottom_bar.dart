import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/calcettoScreen/calcetto.dart';
import 'package:palestre/screens/gymScreen/gym.dart';
import 'package:palestre/screens/homeScreen/homepage.dart';
import 'package:palestre/screens/padelScreen/padel.dart';
import 'package:palestre/screens/piscinaScreen/piscina.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex = 0;
  final screens = const [HomePage(), Calcetto(), Gym(), Piscina(), Padel()];

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 6, 0, 34),
          selectedItemColor: Color.fromARGB(255, 17, 146, 252),
          unselectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
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
        ),
      ),
    );
  }
}
