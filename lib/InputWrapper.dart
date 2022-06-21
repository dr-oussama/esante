import 'package:flutter/material.dart';
import 'InputField.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(
              hintText: '',
              onChanged: (String value) {},
            ),
          ),
        ],
      ),
    );
  }
}
