import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class AddPost extends StatefulWidget {
  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  String radioButtonItem = 'KG';
  int id = 2;

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'cropValue',
      'label': 'Crop',
    },
    {
      'value': 'fertilizerValue',
      'label': 'Fertilizer',
    },
    {
      'value': 'plantsValue',
      'label': 'Plants',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {},
            child: Text(
              "<",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
        title: Text("Add Post"),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Upload Images",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(left: 15, right: 15),
                  //   child: TextFormField(
                  //     obscureText: true,
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       hintText: 'Enter Title',
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Enter Title",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Title',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Enter Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Description',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Item Quantity",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Radio(
                          activeColor: Colors.green,
                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'TON';
                              id = 1;
                            });
                          },
                        ),
                        Text(
                          'TON',
                          //style: new TextStyle(fontSize: 17.0),
                        ),
                        Radio(
                          activeColor: Colors.green,
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'KG';
                              id = 2;
                            });
                          },
                        ),
                        Text(
                          'KG',
                          // style: new TextStyle(
                          //   fontSize: 17.0,
                          // ),
                        ),
                        Radio(
                          activeColor: Colors.green,
                          value: 3,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'GRAM';
                              id = 3;
                            });
                          },
                        ),
                        Text(
                          'GRAM',
                          //style: new TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: SelectFormField(
                      type: SelectFormFieldType.dropdown,
                      initialValue: 'crop', // or can be dialog
                      hintText: 'Crop',
                      items: _items,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Expected Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '40/Per Kg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Avalaible From",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Date',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Select Location",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Location',
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.all(20),
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
                            child: Text("Save"))),
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
