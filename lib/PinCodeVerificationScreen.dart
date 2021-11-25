import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatefulWidget {
  @override
  PinCodeState createState() => PinCodeState();
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  bool hasError = false;
}

class PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              "Enter the 4 digit code that was send to your Mobile Number",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              child: PinCodeTextField(
                appContext: context,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveColor: Colors.black,
                  inactiveFillColor: Colors.grey[300],
                  selectedColor: Colors.black,
                  selectedFillColor: Colors.white,
                  shape: PinCodeFieldShape.circle,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 60,
                  activeFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                //backgroundColor: Colors.white,
                enableActiveFill: true,
                //errorAnimationController: errorController,
                //controller: textEditingController,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {
                    //currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: MediaQuery.of(context)
                                              .size
                                              .width -
                                          MediaQuery.of(context).padding.top) *
                                  0.3),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: () {},
                      child: Text("Verify"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: TextButton(
                      onPressed: () {}, child: Text("Resend Again?")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
