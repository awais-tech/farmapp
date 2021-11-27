// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('AGRIFARM'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://courtingthelaw.com/wp-content/uploads/punjab-police-484x290.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://punjabpolice.gov.pk/system/files/mainbanner-bg-2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/10/6/1412613942090/dea827f7-44df-48ae-a7aa-2284311299f7-2060x1236.jpeg?width=620&quality=85&auto=format&fit=max&s=ee64be8ddc8daa63c0acaaf24915449a"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/ec/7c/86/ec7c86a82e4b6010b577c690e202378a.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //5th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.thenews.com.pk/assets/uploads/akhbar/2021-07-28/869757_7032377_Punjab-police-to-visit-Turkey-for-probe_akhbar.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                    ),
                    label: Text('Buy', style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sell,
                    ),
                    label: Text('Sell', style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.transgender,
                    ),
                    label:
                        Text('Trading', style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
              ]),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Companies',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                          child: Text('See all',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green))),
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 16))),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                    child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Logo.png'),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                )),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Products For Sell',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                        child: Text('See all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green))),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 16))),
                  ),
                ],
              ),
              rowsshow(false),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                    child: Container(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                    ),
                    label: FittedBox(
                        child: Text('Home',
                            style: TextStyle(color: Colors.green))),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      foregroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                )),
                Flexible(
                    child: Container(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                    ),
                    label: FittedBox(
                      child: Text('Shopping Cart',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 16)),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                  ),
                )),
                Flexible(
                    child: Container(
                  height: 50,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                    ),
                    label: FittedBox(
                      child: Text('Favourited',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 16)),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                  ),
                )),
                Flexible(
                    child: Container(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.account_balance),
                    label: FittedBox(
                      child: Text('My Account',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 16)),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                  ),
                )),
              ]),
              rowsshow(false),
              Text(
                'Agri Farm Products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              rowsshow(true),
            ],
          ),
        ),
      ),
    );
  }
}

class rowsshow extends StatelessWidget {
  var check;
  rowsshow(this.check);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(2),
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return Container(
            width: 220.0,
            child: Card(
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
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: FittedBox(
                          child: Text(
                            "Wheat",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      subtitle: Column(
                        children: [
                          Container(
                            child: FittedBox(
                              child: Text(
                                "Rs:40/Per KG",
                              ),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 2),
                          ),
                          check
                              ? RatingBarIndicator(
                                  rating: 3,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                )
                              : Container(),
                        ],
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
            ),
          );
        },
      ),
    );
  }
}
