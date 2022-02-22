import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      endDrawer: DrawerBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
