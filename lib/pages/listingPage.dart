import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'location.dart';


class ListingPage extends StatefulWidget {
  @override
  _ListingPageState createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  bool isSearching = false;
  List<String> product = [
    "Pepperoni Pizza",
    "Buffalo Chicken",
    "Margherita",
    "Chicken Tandoori",
    "Vegetable Supreme"
  ];
  List<String> subtitle =["Hot & Spicy","Large Pizzas","Small & Medium only","Very Hot","Mild & Spicy"];
  List<String> price = ["£12.99","£6.99","£10","£9.99","£11.50"];
  static const List<double> initialRating = [2, 3, 5, 4.5, 2.5];
  @override
  Widget build(BuildContext context) {
    List<String> category = [
      "Pizza",
      "Sides",
      "Drinks",
    ];
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          actions: [
            IconButton(
              icon: !isSearching
                  ? Icon(
                      Icons.search,
                      size: 30,
                    )
                  : Icon(Icons.cancel),
              onPressed: () {
                setState(() {
                  this.isSearching = !this.isSearching;
                });
              },
            )
          ],
          title: !isSearching
              ? Text(
                  "Can't find your Favourite? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              : TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      hintText: "Search for your dish",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
          centerTitle: true,
          backgroundColor: Colors.orange[600],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Menu:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,

                        //   color: Colors.yellowAccent,
                        child: ListView.builder(

                          itemCount: category.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow[600],
                                ),
                                height: 70,
                                //width: 110,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        category[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.white),
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: Colors.white,
                                            size: 32,
                                          ),

                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        location()));
                                          })

                                          onPressed: () {})
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: product.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, childAspectRatio: 5 / 2),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Card(
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              borderOnForeground: false,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.orangeAccent,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height: 120,
                                width: 370,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                          width: 130,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3.0,
                                                color: Colors.orange,
                                                style: BorderStyle.solid),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  "https://image.freepik.com/free-photo/pizza-with-salami-tomatoes-olives-cheese-dough-with-whole-wheat-flour-italian-food_2829-6855.jpg",
                                                )),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0)),
                                            color: Colors.orange,
                                          )),
                                    ),
                                    //  SizedBox(width: 10,),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              product[index],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(subtitle[index]),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                  8.0),
                                              child: Container(
                                                height: 28,
                                                width: 180,
                                                //color: Colors.grey,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,

                                                  children: [
                                                    Text(
                                                      price[index],
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: SmoothStarRating(
                                                        isReadOnly: true,
                                                        size: 12.0,
                                                        color: Colors.yellow,
                                                        rating: initialRating[index],
                                                        borderColor: Colors
                                                            .black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //color: Colors.blue,
                              ),
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
