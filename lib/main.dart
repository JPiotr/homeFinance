import 'package:finance_app/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Home Finance",
    initialRoute: RoutesManager.getInitial(),
    routes: RoutesManager.globalRoutes,
  ));
}
