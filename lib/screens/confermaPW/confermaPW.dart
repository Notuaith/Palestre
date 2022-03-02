import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/bottom_bar.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';

class ConfermaPW extends StatelessWidget {
  const ConfermaPW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 23, 0, 61),
      drawer: const DrawerBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Container(
                width: 50,
                height: 50,
                child: Image.network(
                    'https://scontent.fbri4-1.fna.fbcdn.net/v/t1.6435-9/123272079_100505655204447_1720549245364891418_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=z6zMaQYNOwcAX98Qsib&_nc_ht=scontent.fbri4-1.fna&oh=00_AT8hT18axqwYZO46JI_TJ9mTnhIF6DzCpJGLFS6ubtBYJQ&oe=6239A60A'),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
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
                "Prenotazione completata con successo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
              child: Text(
                'Potrai visualizzare le tue prenotazione nella sezione dedicata al menù principale',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.4,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: BlackButton(testo: 'Torna alla Home'),
            ),
            const Expanded(child: Bottom())
          ],
        ),
      ),
    );
  }
}
