import 'package:flutter/material.dart';

void main() => runApp(Info());

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Information';

    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: title,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Care: '),
                  Text('Gov Care'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Contact: '),
                  Text('909xxxxxxxx'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Hours of service: '),
                  Text('08:00 A.m - 04:30PM'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Working days: '),
                  Text('Mon-Sat'),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Approximate Reply : '),
                  Text('10 MINUTES'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
