import 'package:flutter/material.dart';
import 'package:gomed/widgets/stops/stops.dart';
import 'package:gomed/widgets/info/info.dart';

import 'package:gomed/main.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: "Using Tabs",
      home: Tabs()));
}

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => TabsState();
}

// SingleTickerProviderStateMixin is used for animation
class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          text: 'Slots',
        ),
        Tab(
          text: 'Information',
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
        appBar: AppBar(
          // Title
            title: Text("INFO"),
            // Set the background color of the App Bar
            backgroundColor: Colors.green,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: Column(
          children: <Widget>[
            Expanded(
              child: getTabBarView(<Widget>[Slots(), Info()]),
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