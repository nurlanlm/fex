import 'package:fex_logistics/CountryCodes.dart';
import 'package:fex_logistics/Layout.dart';
import 'package:fex_logistics/Login.dart';
import 'package:fex_logistics/MainRegister.dart';
import 'package:fex_logistics/OtpCode.dart';
import 'package:fex_logistics/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

import 'Dropdown.dart';
import 'Layout2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fex Logistics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }


}
