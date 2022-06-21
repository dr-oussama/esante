import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kBlueButton,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kBlueButton),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0)),
          ),
          onPressed: () {},
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
    );
  }
}
