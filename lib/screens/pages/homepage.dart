import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerBar(),
        appBar: AppBar(
          title: Text('Notuaith'),
        ),
      );
}
