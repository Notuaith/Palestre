import 'package:flutter/material.dart';

class Posizione extends StatelessWidget {
  const Posizione({Key? key}) : super(key: key);

  static const String routeName = '/posizione';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sfo.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}