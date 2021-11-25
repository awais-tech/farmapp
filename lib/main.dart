import 'package:agrifarm/PinCodeVerificationScreen.dart';
import 'package:agrifarm/PostDetails.dart';
import 'package:agrifarm/Profile.dart';
import 'package:agrifarm/VerifyContact.dart';
import 'package:agrifarm/login.dart';
import 'package:agrifarm/products_sell.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VerifyContact(),
    );
  }
}
