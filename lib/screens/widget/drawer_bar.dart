import 'dart:ui';

import 'package:flutter/material.dart';

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
        color: Color.fromARGB(255, 0, 29, 53),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 130,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fbri4-1.fna.fbcdn.net/v/t1.6435-9/123272079_100505655204447_1720549245364891418_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=z6zMaQYNOwcAX98Qsib&_nc_ht=scontent.fbri4-1.fna&oh=00_AT8hT18axqwYZO46JI_TJ9mTnhIF6DzCpJGLFS6ubtBYJQ&oe=6239A60A'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      'Notuaith',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'markgabbiadelcazzo@buco.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Divider(color: Colors.white),
            SizedBox(height: 5),
            buildMenuItem(text: 'Account', icon: Icons.perm_identity_outlined),
            SizedBox(height: 5),
            buildMenuItem(text: 'Modifica Password', icon: Icons.lock_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Le Mie Prenotazioni',
                icon: Icons.bookmark_border_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Abbonamenti', icon: Icons.card_membership_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Notifiche', icon: Icons.notifications_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Dove Siamo', icon: Icons.gps_not_fixed_outlined),
            SizedBox(height: 5),
            buildMenuItem1(text: 'Logout', icon: Icons.logout_outlined),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      trailing: Icon(Icons.arrow_forward, color: color),
      hoverColor: hoverColor,
      onTap: () {},
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
