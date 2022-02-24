import 'package:flutter/material.dart';
import 'package:palestre/screens/confermaPW/confermaPW.dart';
import 'package:palestre/screens/homeScreen/homepage.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/blueButton.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';

class ModificaPW extends StatelessWidget {
  const ModificaPW({Key? key}) : super(key: key);

  static const String routeName = '/modificapw';

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
                  const SizedBox(height: 100),
                  Row(
                    children: const [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Modifica Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Vecchia Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          hintText: "Inserisci Vecchia Password",
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
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Nuova Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          hintText: "Inserisci Nuova Password",
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
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Conferma Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          hintText: "Conferma Password",
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
                  const SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConfermaPW(),
                            ),
                          );
                        },
                        child: BlueButton(testo: 'Salva'),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Bottom(),
                            ),
                          );
                        },
                        child: BlackButton(
                          testo: 'Indietro',
                        ),
                      )
                    ],
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
