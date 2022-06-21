import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/constants.dart';
import '../dashboard/dashboardcutanee.dart';

import '../components/footer.dart';

class IntroToxicitecutanee extends StatefulWidget {
  const IntroToxicitecutanee({Key? key}) : super(key: key);

  @override
  State<IntroToxicitecutanee> createState() => _IntroToxicitecutaneeState();
}

class _IntroToxicitecutaneeState extends State<IntroToxicitecutanee> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Dashboardcutanee())),
        ),
        leadingWidth: 45,
        title: Text(
          ' الأمراض الجلدية',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
            ),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            "الأمراض الجلدية ",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
                color: kBlueButton,
              ),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.4,
            width: size.height * 0.3,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/Frame4.png",
                    height: size.height * 0.35,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.95,
                child: Text(
                  "راه قمت باختيار الأمراض الجلدية, اضغط على الزر لتحت باش تبدى الاختبار.",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      color: kDarkBlueColor,
                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
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
          SizedBox(
            height: size.height * 0.05,
          ),
          //icon du milieu
          Footer(
            text: 'إبدأ',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dashboardcutanee()));
            },
          ),
        ],
      ),
    );
  }
}
