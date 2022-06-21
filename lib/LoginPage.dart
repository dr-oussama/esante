import 'package:flutter/material.dart';

import 'components/Headerlogin.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Color(0xFF348ECB),
          image: DecorationImage(
              image: AssetImage("assets/Asset 1 2.png"), fit: BoxFit.cover),
        ),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Header(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
