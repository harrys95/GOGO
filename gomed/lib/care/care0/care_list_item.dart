import 'package:flutter/material.dart';
import 'package:gomed/care/care0/care_item.dart';
import 'package:gomed/widgets/tabs/tabs_w.dart';

class CareListItem extends StatelessWidget {
  final MyCare care;

  CareListItem(this.care);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(care.number),
        title: Text(care.start),
        subtitle: Text(care.finish),
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tabs()),
          );
        }
    );
  }
}