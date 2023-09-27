import 'package:flutter/material.dart';
import 'chat.dart';
import 'App04.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          height: 60,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(30)),
        ),
        Positioned(
          left: 100,
          top: 30,
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chat(),
                    ),
                  );
                },
                child: Text(
                  'Chats',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
