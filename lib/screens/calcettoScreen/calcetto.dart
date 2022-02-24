import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';

class Calcetto extends StatefulWidget {
  const Calcetto({Key? key}) : super(key: key);

  @override
  _CalcettoState createState() => _CalcettoState();
}

class _CalcettoState extends State<Calcetto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      drawer: DrawerBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
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
    );
  }
}
