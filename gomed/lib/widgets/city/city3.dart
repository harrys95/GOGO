import 'package:flutter/material.dart';
import 'package:gomed/care/care0/care_item.dart';
import 'package:gomed/care/care0/care_list.dart';

import 'package:gomed/main.dart';

class CityWidget3 extends StatelessWidget {

  _buildContactList() {
    return <MyCare>[
      const MyCare(
          start: 'abc', finish: '123,abc, CA', number: '909xxxxx'),
      const MyCare(
          start: 'bcd', finish: '123,abc, C', number: '909xxxxxx'),
      const MyCare(
          start: 'addd', finish: '123,abc, C', number: '909xxxxxx'),
      const MyCare(
          start: 'daaa', finish: '123,abc, C', number: '909xxxxx'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Care Center"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: CareList(_buildContactList()),
            ),
            getBottomPanel(context),
          ],
        )
    );
  }

  GestureDetector getBottomPanel(context) {
    return new GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      },
      child: new Image.asset('assets/bottom_panel.png'),
    );
  }
}