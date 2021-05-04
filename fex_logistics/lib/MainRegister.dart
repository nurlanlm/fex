import 'package:fex_logistics/Layout2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CountryCodes.dart';
import 'Dropdown.dart';
import 'HexColor.dart';
import 'Register.dart';

class MainRegister extends StatefulWidget {
  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {

  @override
  Widget build(BuildContext context) {
    return Layout2(
        Container(
            child: SingleChildScrollView(
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
                      height: 43,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 23),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ad",
                          style: TextStyle(
                              color: Color(0xff383838),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.right,
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(17.0),
                              hintText: "Adınızı daxil edin",
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
                    SizedBox(height: 16,),
                    Container(
                        margin: EdgeInsets.only(left: 23),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Soyad",
                          style: TextStyle(
                              color: Color(0xff383838),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.right,
                        )),

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(17.0),
                              hintText: "Soyadınızı daxil edin",
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
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 23),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Təkrar şifrə",
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
                              contentPadding: EdgeInsets.all(17),

                              //suffixIcon: (Icon(Icons.remove_red_eye)),
                              hintText: "Təkrar şifrəni daxil edin",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.red,
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: Color(0xff414AE2),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Müştəri",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),


                        InkWell(
                          splashColor: Colors.red,
                          onTap: () {


                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4F4F6),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Daşıyıcı",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        ),

                      ],
                    )
                  ],
                )
            ),
    ), AppBar(), "Qeydiyyat", Dropdown());
  }



}
