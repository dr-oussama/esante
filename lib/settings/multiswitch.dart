import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/components/constants.dart';

import 'MyVideoPlayer.dart';

class Multiswitch extends StatefulWidget {
  Multiswitch({Key? key}) : super(key: key);

  @override
  State<Multiswitch> createState() => _MultiswitchState();
}

class _MultiswitchState extends State<Multiswitch> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customSwitch(onChangeFunction1, 'عرض السجلات الصوتية', val1),
        customSwitch(onChangeFunction2, 'تشغيل التسجيلات تلقائيا', val2),
        customSwitch(onChangeFunction3, 'تلقي الاشعارات', val3),
        Padding(
          padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
          child: Row(
            children: [
              IconButton(
                // ignore: prefer_const_constructors
                icon: Icon(Icons.info_rounded),
                iconSize: 30,
                color: kBlueButton,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyVideoPlayer()));
                },
              ),
              Spacer(),
              Text(
                " حول التطبيق",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }

  Widget customSwitch(Function onChangeMethod, String text, bool val) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.blue,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              }),
          Spacer(),
          Text(text,
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
