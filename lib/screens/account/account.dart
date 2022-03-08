import 'package:flutter/material.dart';
import 'package:palestre/confermaOperazione/conferma_operazione.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';
import 'package:palestre/screens/widget/button.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  static const String routeName = '/account';

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
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Nome",
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
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "Inserisci Nome",
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
                  const SizedBox(height: 35),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Cognome",
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
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "Inserisci Cognome",
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
                  const SizedBox(height: 35),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "ID Tessera (Opzionale)",
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
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "ID Tessera",
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
                  const SizedBox(height: 35),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "E-mail",
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
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "Inserisci E-mail",
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
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Button(
                        testo: 'Modifica',
                        page: Operazione(),
                        color: Colors.blue),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Button(
                        testo: 'Indietro',
                        page: Bottom(),
                        color: Colors.transparent),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
