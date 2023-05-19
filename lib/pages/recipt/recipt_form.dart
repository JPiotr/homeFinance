import 'package:finance_app/pages/recipt/recipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReciptFormPage extends StatefulWidget{
  const ReciptFormPage({super.key});

  @override
  State<StatefulWidget> createState() => ReciptFormState();

}

class ReciptFormState extends State<ReciptFormPage>{

  late List<Recipt> _recipts;
  final  _name = TextEditingController();
  final _value = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            if(_formKey.currentState!.validate() && _value.value.text != "" && _name.value.text != ""){
              _recipts = <Recipt>[];
              _recipts.add(Recipt(0, _name.value.text, double.parse(_value.value.text), DateTime.now()));
              Navigator.pop(context,_recipts);
            }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue, // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
          child: const Icon(Icons.done_rounded, color: Colors.white),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     print("button clicked");
        //     // recipts.add(Recipt(0, "test", 0, DateTime.now()));
        //     // Navigator.pushNamed(context, '/recipts/new');
        //   },
        //   style: ElevatedButton.styleFrom(
        //     shape: const CircleBorder(),
        //     padding: const EdgeInsets.all(20),
        //     backgroundColor: Colors.blue, // <-- Button color
        //     foregroundColor: Colors.red, // <-- Splash color
        //   ),
        //   child: const Icon(Icons.navigate_next_rounded, color: Colors.white),
        // )
      ],
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.list_alt_rounded, color: Colors.blue),
                      labelText: "Nazwa rachunku"
                    ),
                  ),
                  TextFormField(
                    controller: _value,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.money, color: Colors.blue),
                        labelText: "Wartość rachunku"
                    ),
                      onChanged: (value)=>{
                       
                      },
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))
                      ]
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}