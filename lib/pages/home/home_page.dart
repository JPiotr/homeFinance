import 'package:flutter/material.dart';

import 'Home_state.dart';

class HomePage extends StatefulWidget {
  var state = HomeState("Domowe Finanse");

  HomePage({super.key});
  @override
  State<StatefulWidget> createState() => state;
}
