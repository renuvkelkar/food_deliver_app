import 'package:flutter/material.dart';


class signupPage extends StatefulWidget {
  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 115,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Lorem ipsum dolor",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,

              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:220,top:20),
              child: Text("Lorem Name"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25,right:25,top:5,bottom:5),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent,width: 2),borderRadius: BorderRadius.circular(30.0)),
                    hintText: "Ipsum Dolor",
                    hintStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black)

                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right:220,top:20),
              child: Text("Lorem Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25,right:25,top:5,bottom:5),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent,width: 2),borderRadius: BorderRadius.circular(30)),
                    /*focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),*/
                    hintText: "lorem@dolor",
                    hintStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black)

                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right:200,top:20),
              child: Text("Lorem Password"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25,right:25,top:5,bottom:5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent,width: 2),borderRadius: BorderRadius.circular(30.0)),
                    hintText: "* * * * * *",
                    hintStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,)

                ),),
            ),
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 55,
                    decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(20)),

                  ),
                  SizedBox(width:20),

                  Text("Lorem ipsum dolor sit",style: TextStyle(fontWeight: FontWeight.bold),)


                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(30)),
              height: 50,
              width:200,
              child: FlatButton(
                onPressed: (){
                },
                child: Text("Lorem ipsum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),

            FlatButton(
              onPressed: (){
              },
              child: Text("Lorem ipsum dolor sit amet?",style:TextStyle(color:Colors.black38,fontSize: 15)),
            )


          ],
        ),
      ),

    );
  }
}