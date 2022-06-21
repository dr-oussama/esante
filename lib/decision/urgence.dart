import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/home.dart';
import '../components/constants.dart';

import '../components/footer.dart';

class Urgence extends StatefulWidget {
  const Urgence({Key? key}) : super(key: key);

  @override
  State<Urgence> createState() => _UrgenceState();
}

class _UrgenceState extends State<Urgence> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: RichText(
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: " خاص تمشي لسبيطار في ",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "أسرع وقت ممكن .",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            color: kRedText,
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: audio == false
                            // ignore: prefer_const_constructors
                            // ignore: prefer_const_constructors
                            ? Icon(
                                Icons.play_arrow,
                                color: kBlueButton,
                                size: 27,
                              )
                            // ignore: prefer_const_constructors
                            : Icon(
                                Icons.pause,
                                color: kBlueButton,
                                size: 27,
                              ),
                        onPressed: () {
                          setState(() {
                            audio = !audio;
                          });
                        },
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: size.width * 0.6,
                        child: Slider(
                          value: 0,
                          onChanged: (val) {},
                          thumbColor: kBlueButton,
                        ),
                      ),
                      const Text(
                        "00:00",
                        style: TextStyle(
                          color: kBlueButton,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/alert.gif",
                    height: size.height * 0.1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                "assets/images/hospital.gif",
                height: size.height * 0.3,
              ),
            ),
            Image.asset(
              "assets/images/urgent.png",
              height: size.height * 0.15,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SizedBox(
              width: size.width * .8,
              child: FlatButton(
                color: kBlueButton,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()));
                },
                child: Text('إنهاء',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
