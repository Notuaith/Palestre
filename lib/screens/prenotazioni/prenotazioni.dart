import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';
import 'package:palestre/screens/widget/button.dart';

class Prenotazioni extends StatelessWidget {
  const Prenotazioni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 23, 0, 61),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 180, left: 28),
              child: Text(
                'Le mie Prenotazioni',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  )),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Campo da calcio a 7',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Titolare prenotazione:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        const Text(
                          'Data gg//mm/aaaa',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        const Spacer(),
                        Row(
                          children: const [
                            Text(
                              'Turno xx.xx - xx.xx',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 300, left: 90),
              child: Button(
                  testo: 'Torna alla Home',
                  page: Bottom(),
                  color: Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}
