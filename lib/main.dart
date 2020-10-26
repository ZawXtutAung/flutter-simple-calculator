import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: _Mbody(),
          ),
        ),
      ),
    );
  }
}

class _Mbody extends StatefulWidget {
  _Mbody({Key key}) : super(key: key);

  @override
  __MbodyState createState() => __MbodyState();
}

class __MbodyState extends State<_Mbody> {
  final txtFieA = TextEditingController();
  final txtFieB = TextEditingController();
  var _result = 0;
  void _add() {
    _result = int.parse(txtFieA.text) + int.parse(txtFieB.text);
    //  setState(() {});
  }

  void _sub() {
    _result = int.parse(txtFieA.text) - int.parse(txtFieB.text);
    //setState(() {});
  }

  void _div() {
    //_result = (int.parse(txtFieB.text) ~/ int.parse(txtFieA.text));
    double num1 = double.parse(txtFieA.text);
    double num2 = double.parse(txtFieB.text);
    _result = (num1 / num2) as int;
    // setState(() {});
  }

  void _mul() {
    _result = int.parse(txtFieA.text) * int.parse(txtFieB.text);
    //setState(() {});
  }

  void _enter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            _result.toString(),
            style: TextStyle(fontSize: 30, fontFamily: 'Henny'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.cyan),
          padding: EdgeInsets.all(5),
          child: TextField(
            controller: txtFieA,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Number1",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.cyan),
          padding: EdgeInsets.all(5),
          child: TextField(
            controller: txtFieB,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Number2",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _add();
                },
                child: Text('+'),
              ),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _sub();
                },
                child: Text('-'),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _mul();
                },
                child: Text('x'),
              ),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _div();
                },
                child: Text('÷'),
              ),
            ],
          ),
        ),
        Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(70, 20, 70, 0),
              child: RaisedButton(
                padding: EdgeInsets.all(20),
                color: Colors.blueGrey,
                onPressed: () {
                  _enter();
                },
                child: Text(
                  "=",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
