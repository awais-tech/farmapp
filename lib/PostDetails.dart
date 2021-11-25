// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class postdetails extends StatelessWidget {
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
        title: Text("Post Details"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: duplicate_ignore
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/Plants.jpg'),
                    height: 100,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Magfali Biyara",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "Rs 40/Per Kg",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text("Quantity: 100 ton",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text("Available from: 24-11-2021",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Divider(
                  color: Colors.black,
                ),
                Text("Description",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 22)),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              width: double.infinity,
              color: Colors.green[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    child: Text('Chat',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    child: Text('Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
