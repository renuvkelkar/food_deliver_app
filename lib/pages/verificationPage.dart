import 'package:flutter/material.dart';
import 'package:fooddeliverapp/pages/categoryPage.dart';
import 'dart:ui';
import 'package:fooddeliverapp/widgets/otpForm.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  //final _formKey = GlobalKey<FormState>();

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
          "Verification",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(" Do you have the verification code ?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            OtpForm(),
            //TextFieldNumberWidget(),
          ]),
        ),
      ),
    );
  }
}
