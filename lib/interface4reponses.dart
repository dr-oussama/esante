import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class Interface4 extends StatefulWidget {
  const Interface4({Key? key}) : super(key: key);

  @override
  State<Interface4> createState() => _Interface4State();
}

class _Interface4State extends State<Interface4> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            onPressed: () {}),
        leadingWidth: 45,
        title: Text(
          'Toxicité',
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
      body: Container(
        color: kPrimaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/icons/vomissement.png",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "شحال من مرة كليتي في النهار؟",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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

              SizedBox(
                height: size.height * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // ignore: prefer_const_constructors

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColoredButtonChoice(
                      text: "فقدان شهية بسيط",
                      color: kGreenButton,
                      textcolor: kGreenButton,
                      widthbutton: size.width * 0.6,
                      press: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColoredButtonChoice(
                      text: " أكثر من 2 وجبات",
                      color: kYellowColor,
                      textcolor: kYellowColor,
                      widthbutton: size.width * 0.6,
                      press: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColoredButtonChoice(
                      text: "أقل من 2 وجبات ",
                      color: kRedButton,
                      textcolor: kRedButton,
                      widthbutton: size.width * 0.6,
                      press: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.065,
              ),
              // ignore: prefer_const_constructors
              Footer(
                text: "الإضافة",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
