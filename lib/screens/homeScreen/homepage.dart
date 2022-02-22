import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/widget/app_bar.dart';
import 'package:palestre/screens/widget/drawer_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Top_Bar(),
      drawer: DrawerBar(),
    );
  }
}
