import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/Logo.png')),
          Container(
            padding: EdgeInsets.all(20),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Your Mobile Number',
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(child: Text("OR")),
          SizedBox(height: 50),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SignInButton(
                      width: 115,
                      btnText: "Google",
                      buttonType: ButtonType.google,
                      buttonSize: ButtonSize.small,
                      onPressed: () {}),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: SignInButton(
                      width: 115,
                      btnText: "Facebook",
                      buttonType: ButtonType.facebook,
                      buttonSize: ButtonSize.small,
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
