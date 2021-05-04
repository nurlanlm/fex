import 'package:fex_logistics/AppBar.dart';
import 'package:fex_logistics/Dropdown.dart';
import 'package:fex_logistics/Layout2.dart';
import 'package:fex_logistics/OtpCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CountryCodes.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Layout2(Container(
      child: Column(
        children: [
          SizedBox(height: 80,),
          Container(
              margin: EdgeInsets.only(left: 23),
              alignment: Alignment.centerLeft,
              child: Text(
                "Ölkə və telefon",
                style: TextStyle(
                    color: Color(0xff383838),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.right,
              )),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(17.0),
                    prefixIcon: MyHomePage(),
                    hintText: "Nömrəni daxil et",
                    hintStyle: TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Color(0xffF4F4F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ))),
          ),
          SizedBox(
            height: 39,
          ),
          InkWell(
            splashColor: Colors.red,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OtpCode()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 329,
                decoration: BoxDecoration(
                    color: Color(0xff414AE2),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Davam et",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hesabın var",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff383838)),
              ),
              Builder(
                builder: (context) =>
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (context) =>
                          //         Register()));
                        },
                        child: Text("Giriş",
                            style: TextStyle(
                                color: Color(0xff414AE2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize
                                .shrinkWrap,
                            padding: EdgeInsets.only(left: 3),
                            side: BorderSide.none,
                            primary: Color(0xff414AE2),
                            alignment: Alignment.centerLeft)),
              )
            ],
          )

        ],
      ),


    ), AppBar(), "Qeydiyyat", Dropdown());
  }
}
