import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'az';
  List<String> items = ["az", "en", "ru", "tr"];
  List<String> asd = ["assets/az.png","assets/en.png","assets/ru.png","assets/tr.png"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        iconSize: 0,
        //value: dropdownvalue,
        icon: Image.asset(
          "assets/${dropdownvalue}.png",
          width: 20,
          height: 20,
        ),

        items: items.map((String items) {
          return DropdownMenuItem(


            value: items,

            child: Text(items),

          );
        }).toList(),
        onChanged: (String newValue) {
          setState(() {
            dropdownvalue = newValue;
          });
        },
      ),
    );
  }
}
