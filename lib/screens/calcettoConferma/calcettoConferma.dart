import 'package:flutter/material.dart';
import 'package:palestre/screens/confermaOperazione/conferma_operazione.dart';
import 'package:palestre/screens/widget/Button.dart';

class ConfermaCalcetto extends StatelessWidget {
  const ConfermaCalcetto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 23, 0, 61),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const [
                    Text(
                      "Conferma Prenotazione",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const [
                    Text(
                      "Campo da calcio a 7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Row(
                    children: const [
                      Text(
                        'Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: const [
                    Text(
                      'Fascia Oraria',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
                child: Divider(
                  height: 1,
                  color: Colors.white.withOpacity(1),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 13.0),
                    child: Text(
                      "Titolare Prenotazione",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
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
                      hintText: "Inserisci Nome Titolare",
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
                    padding: EdgeInsets.only(left: 13.0),
                    child: Text(
                      "Numero di cellulare",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
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
                      hintText: "Inserisci numero di cellulare",
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
                child: Divider(
                  height: 1,
                  color: Colors.white.withOpacity(1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: const [
                    Text(
                      'Prezzo Totale',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 300,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ),
                  child: Text(
                    "Il pagamento delle quote avverrà direttamente in struttura.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(
                width: 282,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Si consiglia una lettura del Regolamento presente nella sezione di prenotazione.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Button(
                  testo: 'Conferma',
                  page: Operazione(),
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
