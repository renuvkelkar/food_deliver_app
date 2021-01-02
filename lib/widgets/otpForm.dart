import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddeliverapp/pages/categoryPage.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin1FocusNode;
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  final _text = TextEditingController();
  final _text1 = TextEditingController();
  final _text2 = TextEditingController();
  final _text3 = TextEditingController();
  bool _filled = false;
  bool _filled1 = false;
  bool _filled2 = false;
  bool _filled3 = false;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _text.dispose();
    _text1.dispose();
    _text2.dispose();
    _text3.dispose();
    pin1FocusNode.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _text,
                  //maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                    LengthLimitingTextInputFormatter(1)
                  ],
                  autofocus: true,
                  showCursor: true,
                  focusNode: pin1FocusNode,
                  style: TextStyle(fontSize: 40),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "_",
                    hintStyle: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    fillColor: Colors.amber[400],
                    filled: _filled,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _text.text.isEmpty ? _filled = false : _filled = true;
                    });
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _text1,
                  //maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                    LengthLimitingTextInputFormatter(1)
                  ],
                  focusNode: pin2FocusNode,
                  showCursor: true,
                  style: TextStyle(fontSize: 40),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "_",
                    hintStyle: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    fillColor: Colors.amber[400],
                    filled: _filled1,
                  ),
                  onChanged: (value) {
                    setState(() {
                      //_text1.text.isEmpty ? _filled1 = false : _filled1 = true;
                      if (_text1.text.isEmpty) {
                        _filled1 = false;
                        pin1FocusNode.requestFocus();
                      } else {
                        _filled1 = true;
                      }
                    });
                    nextField(value, pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _text2,
                  //maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                    LengthLimitingTextInputFormatter(1)
                  ],
                  focusNode: pin3FocusNode,
                  showCursor: true,
                  style: TextStyle(fontSize: 40),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "_",
                    hintStyle: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    fillColor: Colors.amber[400],
                    filled: _filled2,
                  ),
                  onChanged: (value) {
                    setState(() {
                      //_text2.text.isEmpty ? _filled2 = false : _filled2 = true;
                      if (_text2.text.isEmpty) {
                        _filled2 = false;
                        pin2FocusNode.requestFocus();
                      } else {
                        _filled2 = true;
                      }
                    });
                    nextField(value, pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _text3,
                  //maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                    LengthLimitingTextInputFormatter(1)
                  ],
                  focusNode: pin4FocusNode,
                  showCursor: true,
                  style: TextStyle(fontSize: 40),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "_",
                    hintStyle: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    fillColor: Colors.amber[400],
                    filled: _filled3,
                  ),
                  onChanged: (value) {
                    setState(() {
                      //_text3.text.isEmpty ? _filled3 = false : _filled3 = true;
                      if (_text3.text.isEmpty) {
                        _filled3 = false;
                        pin3FocusNode.requestFocus();
                      } else {
                        _filled3 = true;
                      }
                    });
                    if (value.length == 1) {
                      pin4FocusNode.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            splashColor: Theme.of(context).primaryColorLight,
            child: Container(
              child: Center(
                  child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onTap: () {
              if (_text.text.isNotEmpty &&
                  _text1.text.isNotEmpty &&
                  _text2.text.isNotEmpty &&
                  _text3.text.isNotEmpty) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => categoryPage()));
              }
            },
          ),
        ],
      ),
    );
  }
}
