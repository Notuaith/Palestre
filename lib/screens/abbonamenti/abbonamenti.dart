// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/blackButton.dart';

class Abbonamenti extends StatelessWidget {
  const Abbonamenti({Key? key}) : super(key: key);

  static const String routeName = '/abbonamenti';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 23, 0, 61),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18, bottom: 350),
                    child: Text(
                      'Stato Abbonamento',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
