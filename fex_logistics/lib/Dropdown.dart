import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    List<String> icons = ["az", "en", "ru", "tr"];
    List<double> scales = [1, 1.3, 0.8, 1.2];
    return  DropdownButtonHideUnderline(

      child: DropdownButton(
          hint: Align(alignment: Alignment.centerLeft,),


          icon: Image.asset("assets/${icons[_value - 1]}.png", scale: scales[_value - 1], width: 20, height: 20,),
          // value: _value,
          items: [
            DropdownMenuItem(
              child: Row (
                children: [
                  Image.asset("assets/az.png"),
                  SizedBox(width: 10),
                  Text("Azərbaycan")
                ],
              ),
              value: 1,
            ),
            DropdownMenuItem(
              child: Row (
                children: [
                  Image.asset("assets/en.png", scale: 1.3,),
                  SizedBox(width: 10),
                  Text("English")
                ],
              ),
              value: 2,
            ),
            DropdownMenuItem(
                child: Row(
                  children: [
                    Image.asset("assets/ru.png", scale: 0.8,),
                    SizedBox(width: 10),
                    Text("Russian")
                  ],
                ),
                value: 3
            ),
            DropdownMenuItem(
                child: Row(
                  children: [
                    Image.asset("assets/tr.png", scale: 1.2,),
                    SizedBox(width: 10),
                    Text("Turkish")
                  ],
                ),
                value: 4
            )
          ],
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          })
    );
  }
}