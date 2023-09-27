import 'bottomNavigation.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat Page'),
        backgroundColor: Colors.amberAccent,
        leading: Container(),
      ),
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Colors.black,
    );
  }
}
