import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 105,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          title: Text(
            "Food Delivery App",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                height: 3),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[600],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 23, right: 23),
                child: Stack(
                  children: [
                    Container(
                      height: ScreenHeight * 0.29,
                      width: ScreenWidth,
                      decoration: BoxDecoration(
                        color: Colors.orange[600].withOpacity(.9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 20),
                            child: Row(
                             children: [
                              Expanded(
                                child: Text(
                                  "Dolor Sit",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "CARD",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Text(
                              "0000 0000 0000 0000 0000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 187.0),
                            child: Text(
                              "Lorem ipsum",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 100.0),
                                      child: Text(
                                        "Dolor Sit",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 122.0),
                                      child: Text(
                                        "Lorem",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50.0),
                                    child: Text(
                                      "05 / 20",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 65.0),
                                    child: Text(
                                      "ipsum",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Transform(
                          transform: Matrix4.skewX(-0.3),
                          child: Container(
                            height: 215,
                            width: 50,
                            margin: EdgeInsets.only(left: 122),
                            color: Colors.orange[200].withOpacity(.3),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.skewX(-0.3),
                          child: Container(
                            height: 215,
                            width: 20,
                            margin: EdgeInsets.only(left: 18),
                            color: Colors.orange[200].withOpacity(.3),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 30),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  )),
                  child: Text(
                    "Loem ipsum",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 30),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 75,
                        ),
                        child: Text(
                          "Card number",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "0000 0000 0000 0000",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 30),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  )),
                  child: Row(
                    children: [
                      Text(
                        "Lorem",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 60),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.orange[600],
                        size: 40.0,
                      ),
                      SizedBox(width: 30),
                      Text(
                        "Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 60),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.orange[600],
                        size: 40.0,
                      ),
                    ],
                  ),
                ),
              ),
             SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 280,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow[600],
                  ),
                  child: Text(
                    "Pay Now",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
