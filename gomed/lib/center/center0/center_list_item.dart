import 'package:flutter/material.dart';
import 'package:gomed/center/center0/center_item.dart';
import 'package:gomed/widgets/timetable/time_table.dart';

class StopListItem extends StatelessWidget {
  final Stop stop;

  StopListItem(this.stop);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(stop.contact),
        title: Text(stop.name),
        subtitle: Text(stop.address),
        onTap: (){
          print("Container clicked");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TimeTableWidget()),
          );
        }
    );
  }
}