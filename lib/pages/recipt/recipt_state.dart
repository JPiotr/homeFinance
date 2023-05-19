import 'package:finance_app/pages/recipt/recipt.dart';
import 'package:finance_app/pages/recipt/recipt_page.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;

final List<Recipt> recipts = List.of({
  Recipt(0,"Test",0.0,DateTime.now()),
  Recipt(0,"Test2",0.0,DateTime.now())
  });

class ReciptState extends State<ReciptPage> {
  late String title;

  ReciptState(this.title);


  Future<Object?> getValues() async{
    return Navigator.pushNamed(context, '/recipt/new');
  }
  @override
  Widget build(BuildContext context) {
    // final categoryWidgets = recipts.map((e) => CategoryWidget(e));

    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
        persistentFooterButtons: [
          ElevatedButton(
            onPressed: () async {
              List<Recipt>? recipt;
              recipt = (await getValues()) as List<Recipt>?;
              setState(() {

              });
              if(recipt != null){
                recipts.addAll(recipt);
              }
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.blue, // <-- Button color
              foregroundColor: Colors.red, // <-- Splash color
            ),
            child: const Icon(Icons.add, color: Colors.white),
          )
        ],
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(title:
            GestureDetector(
            onTap: () => showGeneralDialog<String>(
              context: context,
              pageBuilder: (context, animation, secondaryAnimation) {
                  return Container();
              },
              transitionBuilder: (BuildContext context,a1,a2,child){
                var curve = Curves.easeInOut.transform(a1.value);
                return Transform.scale(
                  scale: curve,
                    child: buildAlertDialog(index,context),
                    // child: buildAlertDialog(index, context);
                );},
                transitionDuration: const Duration(milliseconds: 300),
            ),
            child:
              Card(
                borderOnForeground: true,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: SizedBox(
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(recipts.elementAt(index).name, style: const TextStyle(fontSize: 19)),
                        Text("${recipts.elementAt(index).dateTime.day}."
                            "${recipts.elementAt(index).dateTime.month}."
                            "${recipts.elementAt(index).dateTime.year}", style: const TextStyle(fontSize: 19))]),
                ),
              ),));
        },itemCount: recipts.length));
  }

  AlertDialog buildAlertDialog(int index, BuildContext context) {
    late Recipt recipt;
    try{
      recipt = recipts.elementAt(index);
    }
    catch (E){
      recipt = Recipt(0, "", 0.0, DateTime.now());
    }
    // Recipt recipt = recipts.elementAt(index);
    return AlertDialog(
              title: Text("Rachunek: ${recipt.name}"),
              content: SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text("Data: ", style: TextStyle(fontSize: 23)),
                        Text("${recipt.dateTime.day}."
                            "${recipt.dateTime.month}."
                            "${recipt.dateTime.year}", style: const TextStyle(fontSize: 23))
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Wartość: ", style: TextStyle(fontSize: 23)),
                        Text("${recipt.value}", style: const TextStyle(fontSize: 23))
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () {

                    Navigator.pop(context, 'Usuń');
                    recipts.remove(recipts.elementAt(index));
                    setState(() {

                    });
                  },
                  child: const Text('Usuń'),
                )
              ],
            );
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
