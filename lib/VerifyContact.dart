// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class VerifyContact extends StatefulWidget {
  const VerifyContact({Key? key}) : super(key: key);

  @override
  _VerifyContactState createState() => _VerifyContactState();
}

class _VerifyContactState extends State<VerifyContact> {
  String text = '';
  TextEditingController a = TextEditingController();

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      a.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,

                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Mobile Number',
                ),
                controller: a,
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                      vertical: 1,
                                      horizontal: MediaQuery.of(context)
                                              .size
                                              .width -
                                          MediaQuery.of(context).padding.top) *
                                  0.3),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: () {},
                      child: const Text("Verify"))),
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.red,
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                  a.text = text;
                });
              },
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.red,
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
              leftIcon: Icon(
                Icons.check,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
