import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Center(
                child: Text('FOOD DELIVERY',style: TextStyle(

                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,),
                ),
              ),
            ),

            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_QArsQQcr_j7vUEx6vejhTA1V1WhXxxaCaA&usqp=CAU',fit: BoxFit.fill,width:410,height: 300,),
            //Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRDbMyowrRoapeFD4u9n5rE76VZqgNjFnWXQ&usqp=CAU'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('''7 days without pizza - makes one weak
                  Finger   Lickin'   Good
                     Have it your way''',style: TextStyle(

                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.orange[600]
              ),
              height:70.0,
              width :220.0,


              child:FlatButton(
                child: Text('GET STARTED',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                //onPressed: () {}
              ),),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('Finger  Lickin Good',
                  style: TextStyle(

                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,),
                ),
              ),
            ),

          ],

        ),
      ),



    );
  }}
