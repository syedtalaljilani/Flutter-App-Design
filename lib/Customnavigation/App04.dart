import 'bottomNavigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.3),
      appBar: buildAppBar(),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.amberAccent,
      centerTitle: true,
      title: Text('Home Page'),
    );
  }
}
