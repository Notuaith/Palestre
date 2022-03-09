import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';
import 'package:palestre/screens/widget/button.dart';

class Operazione extends StatelessWidget {
  const Operazione({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 23, 0, 61),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0, bottom: 20),
            child: Center(
              child: Container(
                child: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 130,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Operazione andata a buon fine.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 250),
            child: Button(
                testo: 'Torna alla Home', page: Bottom(), color: Colors.blue),
          )
        ],
      ),
    );
  }
}
