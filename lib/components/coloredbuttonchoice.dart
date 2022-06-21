import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColoredButtonChoice extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final double widthbutton;
  final Color color, textcolor;

  const ColoredButtonChoice({
    Key? key,
    required this.text,
    required this.press,
    required this.widthbutton,
    this.textcolor = Colors.white,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthbutton,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
          ),
          onPressed: press,
          child: Text(
            text,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: textcolor,
              ),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: color,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        color: color,
      ),
    );
  }
}
