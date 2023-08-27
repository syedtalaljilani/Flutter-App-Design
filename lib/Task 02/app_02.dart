import 'package:flutter/material.dart';

class App02 extends StatelessWidget {
  const App02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Center(
              child: Text(
                'facebook',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff0056FE),
                  fontFamily: 'JockeyOne',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    filled: true,
                    fillColor: const Color(0xffF8F0F0),
                    hintText: 'Mobile number or email address',
                    hintStyle: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      color: Color(0xff8F8989),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(15),
                  filled: true,
                  fillColor: const Color(0xffF8F0F0),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Color(0xff8F8989),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0339F9),
                fixedSize: const Size(342, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Forgotten password?',
              style: TextStyle(
                color: Color(0xff0266FB),
                fontFamily: 'Inter',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 10,
                  ),
                  child: Container(
                    width: 140,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Or',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                    left: 10,
                  ),
                  child: Container(
                    width: 140,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff07A717),
                fixedSize: const Size(238, 44),
              ),
              onPressed: () {},
              child: const Text(
                'Create New Account',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'More',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Meta',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    color: Color(0xff666666),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff666666)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                      child: Text(
                    'C',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      color: Color(0xff666666),
                    ),
                  )),
                ),
                const Text(
                  '2022',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    color: Color(0xff666666),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ));
  }
}
