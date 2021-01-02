import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'map.dart';

class location extends StatefulWidget {

  final List<String> list = ["Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit"];

  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.orange[600]));
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                  child: Icon(
                    Icons.clear,
                    size: 40,
                  )),
            )),
        bottom: PreferredSize(
          preferredSize: Size(500,150),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                  child: Column(
                    children: [
                      Icon(Icons.circle, color: Colors.white, size: 30,),
                      Dash(

                        direction: Axis.vertical,
                        length: 40,
                        dashLength: 9,
                        dashColor: Colors.white,
                      ),
                      Icon(Icons.circle,color: Colors.white, size: 30,)

                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Column(children: [
                  Container(
                      height:70,
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                          hintText: "Lorem ipsum dolor sit",

                          hintStyle: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize:18),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                          contentPadding: const EdgeInsets.only(left: 30),

                        ),

                      )),
                  Container(
                      height:70,
                      width: 300,
                      child: TextField(

                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                          hintText: "Enter Lorem ipsum",

                          hintStyle: TextStyle(color:Colors.white54, fontWeight: FontWeight.bold, fontSize:18),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white12),),
                          contentPadding: const EdgeInsets.only(left: 30),
                          border: InputBorder.none,

                        ),

                      ))
                ],)
              ],
            ),

          ),

        ),

        backgroundColor: Colors.orange[600],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      body:

      Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: ListView.builder(itemCount: widget.list.length,
          itemBuilder: (context, index) => ListTile(
            title: Container(
              decoration: BoxDecoration(
                  border: Border( bottom: BorderSide(color: Colors.black26))
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => map()));
                        },
                        child: Icon(
                          Icons.location_on_sharp, color: Colors.yellow,
                          size: 50,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.list[index],style: TextStyle(fontSize:19, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}

