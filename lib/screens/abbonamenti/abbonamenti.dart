import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';

class Abbonamenti extends StatelessWidget {
  const Abbonamenti({Key? key}) : super(key: key);

  static const String routeName = '/abbonamenti';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 23, 0, 61),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 180, left: 28),
            child: Text(
              'Stato Abbonamento',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 80,
                ),
                Padding(padding: EdgeInsets.only(left: 14)),
                SizedBox(
                  width: 250,
                  child: Expanded(
                    child: Text(
                      'Abbonamento valido Fino in data: 3 ottobre',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 28),
            child: Text(
              'Ingresso libero sala attrezzi',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 28),
            child: Text(
              'Corsi Crossfit',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200, left: 35),
            child: SizedBox(
              width: 350,
              child: Text(
                'Al momento della scadenza in caso di mancato rinnovo non sarà possibile accedere alla sezione dedicata alle prenotazioni in sala fino a nuovo rinnovo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: SizedBox(height: 21),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bottom()),
                  );
                },
                child: BlackButton(
                  testo: 'Indietro',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
