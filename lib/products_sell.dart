// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ProductsSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Products for Sale'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.only(bottom: 5, top: 5),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                  fillColor: Colors.blueAccent[50],
                  filled: true,
                  prefixIcon:
                      Icon(Icons.search, color: Colors.grey.withOpacity(0.6)),
                  labelText: 'Search',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.6),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.holiday_village,
                      color: Colors.white,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.fmd_good_rounded,
                      color: Colors.white,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.fireplace_sharp,
                      color: Colors.white,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.crop_original_outlined,
                      color: Colors.white,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.sports_cricket_sharp,
                      color: Colors.white,
                    ),
                  ),
                )),
              ],
            ),
            Expanded(
              child: Container(
                  color: Colors.white,
                  child: OrientationBuilder(
                    builder: (BuildContext context, Orientation orientation) {
                      return GridView.builder(
                        padding: EdgeInsets.all(2),
                        itemCount: 8,
                        itemBuilder: (ctx, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: Stack(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                        child: Image.network(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg",
                                          height: 120,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    // leading: Icon(Icons.ac_unit_outlined),
                                    title: Container(
                                      width: double.infinity,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4),
                                      child: FittedBox(
                                        child: Text(
                                          "Wheat",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),

                                    subtitle: Container(
                                      child: FittedBox(
                                        child: Text(
                                          "Rs:40/Per KG",
                                        ),
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      color: Colors.red,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:
                              MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 1 / 1.3
                                  : 1 / 1.1,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                        ),
                      );
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
