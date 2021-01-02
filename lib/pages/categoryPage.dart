import 'package:flutter/material.dart';
import 'package:fooddeliverapp/widgets/categoryList.dart';
//import 'package:fooddeliverapp/model/FoodMeu.dart';

class categoryPage extends StatefulWidget {
  @override
  _categoryPageState createState() => _categoryPageState();
}

class _categoryPageState extends State<categoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          title: Text(
            "Menu",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                height: 3),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[600],
        ),
        body: CategoryList(),
    );
  }
}
