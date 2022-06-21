import 'package:flutter/material.dart';
import 'roundedbutton.dart';

import 'constants.dart';

class Footer extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const Footer({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: RoundedButton(
        text: text,
        color: kBlueButton,
        textcolor: Colors.white,
        press: press,
      ),
    );
  }
}
