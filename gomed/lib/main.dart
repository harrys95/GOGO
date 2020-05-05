import 'package:flutter/material.dart';
import 'package:gomed/widgets/dialcare/dial_care.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'GoMed';

    return MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("onTap called.");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DialCareWidget()),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Align(
            alignment: FractionalOffset.center,
            child: Image.asset('assets/start_page.png')
        ),
      ),
    );
  }
}