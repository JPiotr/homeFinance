import 'package:finance_app/pages/recipt/recipt.dart';
import 'package:finance_app/pages/recipt/recipt_page.dart';
import 'package:flutter/material.dart';

final List<Recipt> recipts = List.of({
  Recipt(0,"Test",0.0,DateTime.now()),
  Recipt(0,"Test2",0.0,DateTime.now())
  });

class ReciptState extends State<ReciptPage> {
  late String title;


  ReciptState(this.title);

  @override
  Widget build(BuildContext context) {
    // final categoryWidgets = recipts.map((e) => CategoryWidget(e));

    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
        persistentFooterButtons: [
          ElevatedButton(
            onPressed: () {
              print("button clicked");
              recipts.add(Recipt(0, "test", 0, DateTime.now()));
              // Navigator.pushNamed(context, '/recipts/new');
            },
            child: Icon(Icons.add, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              backgroundColor: Colors.blue, // <-- Button color
              foregroundColor: Colors.red, // <-- Splash color
            ),
          )
        ],
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(title: Card(
            borderOnForeground: true,
            // margin: const EdgeInsets.all(5),
            shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: 50,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Text(recipts.elementAt(index).name, style: TextStyle(fontSize: 19)),
                Text("${recipts.elementAt(index).dateTime.day}."
                  "${recipts.elementAt(index).dateTime.month}."
                  "${recipts.elementAt(index).dateTime.year}", style: TextStyle(fontSize: 19))]),
            ),
          ));
        },itemCount: recipts.length));
  }

  // SingleChildScrollView buildSingleChildScrollView() {
  //   return SingleChildScrollView(
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             for (var widget in categoryWidgets) widget.getWidget(context)
  //           ],
  //         ),
  //       ),
  //     );
  // }
}
