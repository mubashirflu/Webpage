import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Navbar.dart';
import 'package:flutter_application_2/main.dart';

class Landpage extends StatelessWidget {
  List<Widget> pagechildern(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Website\n Developer",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45.0,
                color: Colors.white),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Text(
              "We have taken each and every project in handed our to us a Challenge,which is help us achieve a high project success rate.",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          SizedBox(height: 30),
          MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            onPressed: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                "Our Packages",
                style: TextStyle(color: Colors.red),
              ),
            ),
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/mu1.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pagechildern(constraints.biggest.width / 2));
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: pagechildern(constraints.biggest.width / 2),
        );
      }
    });
  }
}
