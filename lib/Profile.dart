// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class profile extends StatelessWidget {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'farmerValue',
      'label': 'Farmer',
    },
    {
      'value': 'supplierValue',
      'label': 'Supplier',
    },
    {
      'value': 'consumerValue',
      'label': 'Consumer',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(28),
                      bottomLeft: Radius.circular(28))),
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('AF'),
                ),
              ),
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Enter Your Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Umar Hazarvi',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Email Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'umairyorash@gmail.com',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: SelectFormField(
                      type: SelectFormFieldType.dropdown,
                      initialValue: 'farmer', // or can be dialog
                      hintText: 'Farmer',
                      items: _items,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Contact Number",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '3025121205',
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                            vertical: 1,
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                MediaQuery.of(context)
                                                    .padding
                                                    .top) *
                                        0.3),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            onPressed: () {},
                            child: const Text("Save"))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
