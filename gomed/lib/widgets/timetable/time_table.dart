import 'package:flutter/material.dart';
import 'package:gomed/center/center0/center_item.dart';
import 'package:gomed/table/table_list.dart';

import 'package:gomed/main.dart';

class TimeTableWidget extends StatelessWidget {
  _buildContactList() {
    return <Stop>[
      const Stop(
          name: 'Ontario', address: '909xxxxxx', contact: '123, abc, CA'),
      const Stop(
          name: 'Rancho Cucamonga', address: '909xxxxxx', contact: '321, bcd, CA'),
      const Stop(
          name: 'Riverside', address: '909xxxxxxx', contact: '455, abc, CA'),
      const Stop(
          name: 'Upland', address: '909xxxxxxx', contact: '123, bcd, CA'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Contact"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: TableList(_buildContactList()),
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