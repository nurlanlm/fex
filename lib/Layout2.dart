import 'package:fex_logistics/Dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout2 extends StatefulWidget {
   final Container container;
   final AppBar appBar;
   final String title;
   final Widget language;

  const Layout2(this.container, this.appBar, this.title, this.language);

  @override
  _LayoutState createState() => _LayoutState(container, appBar, title, language);
}

class _LayoutState extends State<Layout2> {

   Container container;
   AppBar appBar;
   String title;
   Widget language;



   _LayoutState(this.container,  this.appBar, this.title, this.language);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xff414AE2),
      appBar: AppBar(

        toolbarHeight: 80.0,
        elevation: 0.0,
        backgroundColor: Color(0xff414AE2),
        title: Text(this.title),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(right: 19.0), child: this.language),
        ],



      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 80,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: this.container,

      ),
    );
  }
}
