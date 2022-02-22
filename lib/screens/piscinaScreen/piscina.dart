import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/widget/app_bar.dart';

class Piscina extends StatefulWidget {
  const Piscina({Key? key}) : super(key: key);

  @override
  _PiscinaState createState() => _PiscinaState();
}

class _PiscinaState extends State<Piscina> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Top_Bar(),
    );
  }
}
