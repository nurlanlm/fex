import 'package:fex_logistics/AppBar.dart';
import 'package:fex_logistics/Dropdown.dart';
import 'package:fex_logistics/HexColor.dart';
import 'package:fex_logistics/Layout2.dart';
import 'package:fex_logistics/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CountryCodes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Layout2(
        Container(
            child: Column(
              children: [
                SizedBox(
                  height: 38,
                ),
                FlutterLogo(
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(
                      "Express",
                      style: TextStyle(
                          color: HexColor("#172A88"),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(
                        color: Color(0xff172A88),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
                SizedBox(
                  height: 63,
                ),
                Container(
                    margin: EdgeInsets.only(left: 23),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Telefon və Ölkə",
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
                  height: 16,
                ),
                Container(
                    margin: EdgeInsets.only(left: 23),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Şifrə",
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

                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          contentPadding: EdgeInsets.all(17),

                          //suffixIcon: (Icon(Icons.remove_red_eye)),
                          hintText: "Şifrəni daxil et",
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
                Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(right: 25),
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                        onPressed: null,
                        child: Text("Şifrəni unutdum",
                            style: TextStyle(
                                color: Color(0xff414AE2),
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            side: BorderSide.none,
                            primary: Color(0xff414AE2),
                            alignment: Alignment.centerLeft))),
                SizedBox(
                  height: 39,
                ),
                InkWell(
                  splashColor: Colors.red,
                  onTap: () {},
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
                        "Giriş",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hesabın yoxdur?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff383838)),
                    ),
                    Builder(
                      builder: (context) =>
                          OutlinedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        Register()));
                              },
                              child: Text("Qeydiyyat",
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
            )),
        AppBar(), "Giriş", Dropdown());
  }
}
