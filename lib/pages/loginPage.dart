import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'signupPage.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
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
              "Log In",
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
      body: Form(
        autovalidate: true,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(border:OutlineInputBorder(borderSide: BorderSide(color: Colors.orange[600],),borderRadius:BorderRadius.circular(30)),
                      labelText: "Email Id",
                      hintText: "lorem@dolor.com"),
                  validator:MultiValidator([
                    RequiredValidator(errorText: ("Required")),
                    EmailValidator(errorText: ("not a valid email")),
                    //RequiredValidator(errorText: ("Required"))
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscureText: true,
                  validator:MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    MinLengthValidator(6,errorText:"min 6 char long"),
                    MaxLengthValidator(15,errorText:"max 15 char long"),
                  ]),
                  decoration: InputDecoration(border:OutlineInputBorder(borderSide: BorderSide(color: Colors.orange[600],),borderRadius:BorderRadius.circular(30)),
                      labelText: "Password",
                      hintText: "min 6 char long"),
                ),
              ),

              SizedBox (height:20),

              Container(
                decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(30)),
                height: 50,
                width:200,

                child: FlatButton(
                  onPressed: (){
                    /*if(formKey.currentState.validate()){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>shoping()));
                      print("valid input");
                    }else{
                      print("invalid input");
                    }*/

                  },
                  child: Text("Log In",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>signupPage()));
                  },
                  child: Text("New user?Create an account here.",style:TextStyle(color:Colors.black38,fontSize: 15)),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}