import 'package:flutter/material.dart';
import 'package:palestre/screens/welcomePage/welcome_page_screen.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/blueButton.dart';

class RecuperaPw extends StatelessWidget {
  const RecuperaPw({Key? key}) : super(key: key);

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
            const SizedBox(height: 380),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Recupera Password",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: const EdgeInsets.all(5)),
                      const Text(
                        "Inserisci l'email usata per la registrazione per ricevere il link di recupero.",
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
            const SizedBox(height: 45),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
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
                      hintText: "Inserisci Email",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelecomePage()),
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
    );
  }
}
