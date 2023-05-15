import 'dart:convert';

import 'package:flutter/material.dart';

class ViewData {
  late String title;
  late String description;

  ViewData(this.title, this.description);

  Widget getTitle() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(title,
            style: const TextStyle(fontSize: 25, letterSpacing: 2)));
  }

  Widget getDescription() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          description,
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.left,
        ));
  }

  Container getWidget() {
    return Container(
      height: 250,
      child: Card(
        borderOnForeground: true,
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          getTitle(),
          const Divider(color: Colors.black),
          Row(
            children: [getDescription()],
          )
        ]),
      ),
    );
  }
}
