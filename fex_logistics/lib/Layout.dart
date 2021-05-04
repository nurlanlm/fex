import 'package:fex_logistics/Dropdown.dart';
import 'package:fex_logistics/HexColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  Container children;
  String headerText;
  bool showLanguage;

  Layout(Container children, String headerText, bool showLanguage) {
    this.children = children;
    this.headerText = headerText;
    this.showLanguage = showLanguage;
  }

  @override
  _LayoutState createState() =>
      _LayoutState(this.children, this.headerText, this.showLanguage);
}

class _LayoutState extends State<Layout> {
  Container children;
  String headerText;
  bool showLanguage;

  _LayoutState(Container children, String headerText, bool showLanguage) {
    this.children = children;
    this.headerText = headerText;
    this.showLanguage = showLanguage;
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double headerHeight = 80 - statusBarHeight;
    return Scaffold(
      backgroundColor: HexColor("#414AE2"),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  alignment: Alignment.centerRight,
                  child: Text(this.headerText,
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Dropdown(),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 15),
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: HexColor("#414AE2"),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                  10.0,
                ))),
            height: headerHeight,
            margin: EdgeInsets.only(top: statusBarHeight),
          ), // Header blue area

          Container(
              height: MediaQuery.of(context).size.height - 80,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: this.children),
        ],
      ),
    );
  }
}
