import 'package:flutter/material.dart';
import 'package:gomed/center/center0/center_list.dart';
import 'package:gomed/center/center0/center_item.dart';

import '../main.dart';

class NearestStopsWidget extends StatelessWidget {
  _buildContactList() {
    return <Stop>[
      const Stop(
          name: 'Davita', address: '', contact: '909xxxxxx'),
      const Stop(
          name: 'Fresenius', address: '', contact: '909xxxxxx'),
      const Stop(
          name: 'Tacloban', address: '', contact: '909xxxxxx'),
      const Stop(
          name: 'Florence', address: '', contact: '909xxxxxx'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Dialysis Info"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: StopsList(_buildContactList()),
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