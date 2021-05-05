import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBox1 extends StatefulWidget {
  @override
  _CheckBox1State createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(

      contentPadding: EdgeInsets.only(left: 20.0),
      value: this.value,
      title: Padding(

        padding: const EdgeInsets.only(right: 20),
        child: RichText(
          maxLines: 2,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "Üyelik sözləşməsi ",
                style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "’ni oxudum və qəbul edirəm.",
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)

              )
            ],
          ),
        ),
      ),
      onChanged: (bool value) {
        setState(() {
          this.value = value;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
