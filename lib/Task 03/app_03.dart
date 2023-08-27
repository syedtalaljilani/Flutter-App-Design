import 'package:flutter/material.dart';

class App03 extends StatelessWidget {
  const App03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              'Hi, Welcome Back! 👋',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 30,
              bottom: 0,
            ),
            child: Text(
              'Email',
            ),
          ),
          emailField(),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 30,
              bottom: 10,
            ),
            child: Text(
              'Password',
            ),
          ),
          passwordfield(),
          rememberandforgetpassword(),
          loginbutton(),
          const SizedBox(
            height: 80,
          ),
          orwithtext(),
          facebookloginbutton(),
          googleloginbutton(),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account ? ',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                ),
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  color: Color(0xff160062),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding googleloginbutton() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFFFFFF),
          fixedSize: const Size(312, 48),
          shape: ContinuousRectangleBorder(
            side: BorderSide(
              color: Colors.black.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset('assets/app03/icons/Google Logo.png'),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Text(
                'Login with Google',
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding facebookloginbutton() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff1877F2),
            fixedSize: const Size(312, 48),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset('assets/app03/icons/Facebook Logo.png'),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: Text(
                'Login with Facebook',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row orwithtext() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 10,
          ),
          child: Container(
            width: 125,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        const Text(
          'Or With',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 30,
            left: 10,
          ),
          child: Container(
            width: 125,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding loginbutton() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0E64D2),
            fixedSize: const Size(312, 48)),
        child: const Text('Login'),
      ),
    );
  }

  Padding rememberandforgetpassword() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
      ),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) => {},
            fillColor: const MaterialStatePropertyAll(Colors.white),
            checkColor: Colors.black,
          ),
          const Text(
            'Remember Me',
            style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 60,
          ),
          const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xffE86969),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Padding passwordfield() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 190, 181, 181),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 190, 181, 181),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'Password',
          suffixIcon: const Icon(
            Icons.remove_red_eye,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Padding emailField() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 190, 181, 181),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 190, 181, 181),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'example@gmail.com',
        ),
      ),
    );
  }
}
