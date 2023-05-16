import 'package:finance_app/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Home Finance",
    initialRoute: RoutesManager.getInitial(),
    routes: RoutesManager.globalRoutes,
  ));
}

class ReciptsPage extends StatefulWidget {
  @override
  State<ReciptsPage> createState() => _ReciptsPageState();
}

class _ReciptsPageState extends State<ReciptsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("widget.title"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Test")],
            ),
          ),
        ));
  }
}
