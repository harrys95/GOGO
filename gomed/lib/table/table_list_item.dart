import 'package:flutter/material.dart';
import 'package:gomed/center/center0/center_item.dart';
import 'package:gomed/widgets/tabs/tabs_w.dart';

class TableListItem extends StatelessWidget {
  final Stop stop;

  TableListItem(this.stop);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(stop.address),
        title: Text(stop.contact),
        subtitle: Text(stop.name),
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