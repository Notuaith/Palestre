import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:palestre/screens/abbonamenti/abbonamenti.dart';
import 'package:palestre/screens/account/account.dart';
import 'package:palestre/screens/modificaPwPage/modificaPwPage.dart';
import 'package:palestre/screens/notifiche/notifiche.dart';
import 'package:palestre/screens/posizione/posizione.dart';
import 'package:palestre/screens/prenotazioni/prenotazioni.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  _DrawerBarState createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromARGB(255, 0, 29, 53),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 130,
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fbri4-1.fna.fbcdn.net/v/t1.6435-9/123272079_100505655204447_1720549245364891418_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=z6zMaQYNOwcAX98Qsib&_nc_ht=scontent.fbri4-1.fna&oh=00_AT8hT18axqwYZO46JI_TJ9mTnhIF6DzCpJGLFS6ubtBYJQ&oe=6239A60A'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const Text(
                      'Notuaith',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'markgabbiadelcazzo@buco.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Divider(color: Colors.white),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Account',
              icon: Icons.perm_identity_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Modifica Password',
              icon: Icons.lock_outlined,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Le Mie Prenotazioni',
              icon: Icons.bookmark_border_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Abbonamenti',
              icon: Icons.card_membership_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 5),
            buildMenuItem(
                text: 'Notifiche',
                icon: Icons.notifications_outlined,
                onClicked: () => selectedItem(
                      context,
                      4,
                    )),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Dove Siamo',
              icon: Icons.gps_not_fixed_outlined,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 5),
            buildMenuItem1(text: 'Logout', icon: Icons.logout_outlined),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      trailing: Icon(Icons.arrow_forward, color: color),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

Widget buildMenuItem1({
  required String text,
  required IconData icon,
}) {
  final color = Colors.red;
  final hoverColor = Colors.red;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {},
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Account(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ModificaPW(),
        ),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Prenotazioni(),
        ),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Abbaonamenti(),
        ),
      );
      break;
    case 4:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Notifiche(),
        ),
      );
      break;
    case 5:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Posizione(),
        ),
      );
      break;
  }
}
