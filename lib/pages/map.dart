import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class map extends StatefulWidget {
  @override
  _mapState createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.orange[600]));
    final Screenwidth = MediaQuery.of(context).size.width;
    final Screenheight = MediaQuery.of(context).size.height;
    return Container(

      child: Scaffold(

        appBar: AppBar(

          leading: IconButton(
              onPressed: () {},
              icon: Container(
                  child: Icon(
                    Icons.menu_sharp,
                    size: 40,
                  ))),

          toolbarHeight: 80,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),

          title: Padding(
            padding: const EdgeInsets.only(left: 125.0),
            child: Text(
              "Lorem Ipsum",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  height: 1),
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.orange[600],
        ),
        body: Column(
          children: [
            Container(

              height: Screenheight * 0.50,
              width: Screenwidth,

            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.5),
                  )
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left : 20.0),
                    child: Text("Lorem ipsum", style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 19
                    ),),
                  ),
                  SizedBox(width:180),
                  Container(
                    height:18,
                    width: 18,
                    child: SvgPicture.network("https://www.flaticon.com/svg/static/icons/svg/991/991952.svg", fit:BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right :2.0),
                    child: Text("12.40",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                  ),

                ],
              ),
              height: Screenheight * 0.09,

            ),
            Container(
              height: Screenheight * 0.11,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left :10.0, bottom:15),
                    child: Icon(Icons.ac_unit_outlined, color: Colors.grey, size: 35,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top:2),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Lorem ipsum",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.orangeAccent,
                              fontSize: 16
                          ),),
                        ),Text("Dolor",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width:40),


                  Padding(
                    padding: const EdgeInsets.only(bottom : 10.0),
                    child: Container(
                      height:25,
                      width: 25,
                      child: SvgPicture.network("https://www.flaticon.com/svg/static/icons/svg/98/98913.svg", color: Colors.grey, ),
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top:13, bottom: 10),
                        child: Text("Lorem ipsum",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.orangeAccent,
                            fontSize: 16
                        ),),
                      ),

                      Row(
                        children: [Container(
                          height:18,
                          width: 18,
                          child: SvgPicture.network("https://www.flaticon.com/svg/static/icons/svg/991/991952.svg", ),
                        ),Text("6.40",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 19
                        ),),

                        ],
                      ),

                    ],
                  )

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                child: Text("Lorem Ipsum", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                decoration: BoxDecoration(
                    color: Color(0xFFFBC02D),
                    borderRadius: BorderRadius.circular(35)
                ),
                height: Screenheight * 0.09,

              ),
            )
          ],
        ),
      ),
    );
  }
}
