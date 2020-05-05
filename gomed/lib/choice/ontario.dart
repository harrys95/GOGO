import 'package:flutter/material.dart';
import 'package:gomed/widgets/city/city0.dart';
import 'package:gomed/widgets/city/city1.dart';
import 'package:gomed/widgets/city/city2.dart';
import 'package:gomed/widgets/city/city3.dart';

class OntarioView {
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
            MaterialPageRoute(builder: (context) => CityWidget0()),
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
            MaterialPageRoute(builder: (context) => CityWidget1()),
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
            MaterialPageRoute(builder: (context) => CityWidget2()),
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
            MaterialPageRoute(builder: (context) => CityWidget3()),
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
        getGestureWidget("", "ontario.jpg"),
        getGestureWidget1("", "rancho.jpg"),
        getGestureWidget2("", "riverside.png"),
        getGestureWidget3("", "upland.jpg"),
      ],
    );
  }


}