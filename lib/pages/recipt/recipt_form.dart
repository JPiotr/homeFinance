import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReciptFormPage extends StatefulWidget{
  const ReciptFormPage({super.key});

  @override
  State<StatefulWidget> createState() => ReciptFormState();

}

class ReciptFormState extends State<ReciptFormPage>{
  bool valueFieldValidator = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            // recipts.add(Recipt(0, "test", 0, DateTime.now()));
            // Navigator.pushNamed(context, '/recipts/new');
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue, // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
          child: const Icon(Icons.done_rounded, color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {
            print("button clicked");
            // recipts.add(Recipt(0, "test", 0, DateTime.now()));
            // Navigator.pushNamed(context, '/recipts/new');
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue, // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
          child: const Icon(Icons.navigate_next_rounded, color: Colors.white),
        )
      ],
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Form(
              // onChanged: ,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.list_alt_rounded, color: Colors.blue),
                      labelText: "Nazwa rachunku"
                    ),
                  ),
                  TextFormField(
                    // validator: (value) => valueFieldValidator,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.money, color: Colors.blue),
                        labelText: "Wartość rachunku"
                    ),
                      onChanged: (value)=>{
                        if(double.parse(value)>0){
                          valueFieldValidator = true
                        }
                        else{
                        valueFieldValidator = false
                        }
                      },
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))
                      ]
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}