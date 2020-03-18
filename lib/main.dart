import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(title: "contador de pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _infoTxt = "May come in!";
  int _pessoas = 0;

  void _changePeople(int dec) {
    setState(() {
      _pessoas += dec;
      if (_pessoas < 0) {
        _infoTxt = "Inverted world";
      } else if (_pessoas <= 10) {
        _infoTxt = "May come in!";
      } else {
        _infoTxt = "Maximum capacity";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[



        ],

      ),

      body:


      Stack(
      children: <Widget>[
        Image.asset(
        "images/Emporio-Jardim_Ambiente-1_Tomas-Rangel.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Container(color: Colors.black54),
      Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(

          child:

          Text(
            "PEOPLE: $_pessoas",

            style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 70.0,
                fontFamily: 'Bebas'),
          )
          ,

        ),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              child: Text(
                "+1",
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              onPressed: () {
                _changePeople(1);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              child: Text(
                "-1",
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              onPressed: () {
                _changePeople(-1);
              },
            ),
          )
        ]),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "$_infoTxt",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        )
      ])
      ],
    )



    );


  }
}
