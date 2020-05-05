import 'package:flutter/material.dart';
import 'package:gomed/center/center0/center_item.dart';
import 'package:gomed/table/table_list_item.dart';

class TableList extends StatelessWidget {
  final List<Stop> list;

  TableList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<TableListItem> _buildContactsList() {
    return list
        .map((contact) => TableListItem(contact))
        .toList();
  }
}