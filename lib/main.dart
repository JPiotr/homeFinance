import 'package:flutter/material.dart';

import 'Data/ViewData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Home Finance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var text = Text(
      getWidget,
    );

    var views = List.from({
      ViewData("Rachunki", "Wszystkie wprowadzone rachunki do aplikacji")
          .getWidget(),
      ViewData("Podsumowanie", "Podsumowania finansów w zadanym okresie")
          .getWidget(),
      ViewData("Kalendarz", "Kalendarz wydatków").getWidget(),
      ViewData("Ustawienia", "Ustawienia słowników").getWidget()
    });

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [for (Container viewData in views) viewData],
            ),
          ),
        ));
  }

  String get getWidget => 'Hello World!';
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
