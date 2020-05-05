import 'package:flutter/material.dart';
import 'package:gomed/dialcare1/dialcare0.dart';
import 'package:gomed/dialcare1/dialcare1.dart';
import 'package:gomed/dialcare1/dialcare2.dart';
import 'package:gomed/dialcare1/dialcare3.dart';

class CareCenterView {
  var context;

  Card getStructuredGridCell(name, image) {
    return Card(
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Image(
                image: AssetImage('assets/' + image)
            ),
            Center(
              child: Text(name),
            ),
          ],
        ));
  }

  GestureDetector getGestureWidget(name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DialCare0Widget()),
          );
        },
        child: getStructuredGridCell(name, image)
    );
  }
  GestureDetector getGestureWidget1(name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DialCare1Widget()),
          );
        },
        child: getStructuredGridCell(name, image)
    );
  }
  GestureDetector getGestureWidget2(name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DialCare2Widget()),
          );
        },
        child: getStructuredGridCell(name, image)
    );
  }
  GestureDetector getGestureWidget3(name, image) {
    return new GestureDetector(
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DialCare3Widget()),
          );
        },
        child: getStructuredGridCell(name, image)
    );
  }
  GridView build(context) {
    this.context = context;
    return GridView.count(
      primary: true,
      padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getGestureWidget("", "davita.png"),
        getGestureWidget1("", "fresenius.png"),
        getGestureWidget2("", "taclovan.png"),
        getGestureWidget3("", "floren.jpg"),
      ],
    );
  }


}