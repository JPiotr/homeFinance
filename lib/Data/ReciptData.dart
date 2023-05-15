import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class ReciptData {
  late String title;
  late String description;

  ReciptData(this.title, this.description);

  Widget getTitle() {
    return Text(title, style: const TextStyle(fontSize: 25, letterSpacing: 2));
  }

  Widget getDescription() {
    return Text(description, style: const TextStyle(fontSize: 18));
  }

  Card getWidget() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.blueAccent,
      child: RoundedExpansionTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: getTitle(),
          children: [getDescription()]),
    );
  }
}
