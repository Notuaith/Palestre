import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:palestre/screens/welcomePage/welcome_page_screen.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/blueButton.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sfo.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 75),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Registrazione",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                      ),
                      const Text(
                        "Crea il tuo acccount inserendo i tuoi dati nei campi sottostanti.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Nome",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci Nome",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Cognome",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci Cognome",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "ID Tessera (Opzionale)",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci ID",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci Email",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  obscureText: true,
                  autofocus: false,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Conferma Password",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.1),
              child: Container(
                height: 40,
                child: TextFormField(
                  obscureText: true,
                  autofocus: false,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Inserisci Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [BlueButton(testo: 'Invia', page: Bottom())],
            ),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelecomePage(),
                      ),
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
      ),
    );
  }
}
