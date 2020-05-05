import 'package:flutter/material.dart';
import 'package:gomed/main.dart';

void main() => runApp(Schedule());

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'А 3т';

    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: getBody(),
            ),
            getBottomPanel(context),
          ],
        )
      ),
    );
  }

  Widget getBody() {
    return Center (
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Schedule'),
          ),
          ListTile(
            title: Text('08:00'),
          ),
          ListTile(
            title: Text('11:00'),
          ),
          ListTile(
            title: Text('13:00'),
          ),
          ListTile(
            title: Text('15:00'),
          ),
          ListTile(
            title: Text('17:30'),
          ),
          ListTile(
            title: Text('19:25'),
          ),
        ],
      ),
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
