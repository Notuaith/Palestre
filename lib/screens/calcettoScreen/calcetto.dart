import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/widget/custom_appbar.dart';

class Calcetto extends StatefulWidget {
  const Calcetto({Key? key}) : super(key: key);

  @override
  _CalcettoState createState() => _CalcettoState();
}

class _CalcettoState extends State<Calcetto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200), child: CustomBar()),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sfo.png"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
