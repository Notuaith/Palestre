import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:palestre/screens/confermaPW/confermaPW.dart';
import 'package:palestre/screens/recuperaPwPage/recupera_password_screen.dart';
import 'package:palestre/screens/singup_page/singinPage.dart';
import 'package:palestre/screens/widget/button.dart';

class WelecomePage extends StatelessWidget {
  const WelecomePage({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  const SizedBox(height: 380),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Benvenuto nella nostra Palestra",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Container(
                      height: 35,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Inserisci Email",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Container(
                      height: 35,
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 17),
                  Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RecuperaPw(),
                            ),
                          ),
                          child: const Text(
                            "Password dimenticata?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
