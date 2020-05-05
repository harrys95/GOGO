import 'package:flutter/material.dart';
import 'package:gomed/care/care0/care_list_item.dart';
import 'package:gomed/care/care0/care_item.dart';
class CareList extends StatelessWidget {
  final List<MyCare> list;

  CareList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<CareListItem> _buildContactsList() {
    return list
        .map((contact) => CareListItem(contact))
        .toList();
  }
}