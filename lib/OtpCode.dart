import 'package:fex_logistics/AppBar.dart';
import 'package:fex_logistics/Layout2.dart';
import 'package:fex_logistics/MainRegister.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_count_down/otp_count_down.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_timer/flutter_otp_timer.dart';

class OtpCode extends StatefulWidget {
  @override
  _OtpCodeState createState() => _OtpCodeState();
}

class _OtpCodeState extends State<OtpCode> {
  @override
  Widget build(BuildContext context) {
    return Layout2(
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "+994775165916 nömrəsinə göndərilən sms "
                  "kodu daxil edin",
                  overflow: TextOverflow.clip,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OTPTextField(
                length: 4,
                keyboardType: TextInputType.number,
                width: MediaQuery.of(context).size.width - 75,
                fieldWidth: 50,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
              ),
              SizedBox(
                height: 70,
              ),
              InkWell(
                splashColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainRegister()));
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
            ],
          ),
        ),
        AppBar(),
        "Kodu Daxil et",
        EmptyAppbarAction());
  }
}
