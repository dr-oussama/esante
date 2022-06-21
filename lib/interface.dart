import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
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
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "واش درتي شي حصة أخرى ديال العلاج الكيميائي؟",
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
            //icon du milieu
            Image.asset(
              "assets/icons/Capture d’écran 2022-04-25 132729.png",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ColoredButtonChoice(
                  text: "لا",
                  color: kRedButton,
                  textcolor: kRedButton,
                  widthbutton: size.width * 0.25,
                  press: () {},
                ),

                // ignore: prefer_const_constructors
                SizedBox(
                  width: 80,
                ),
                ColoredButtonChoice(
                  text: "نعم",
                  color: kGreenButton,
                  textcolor: kGreenButton,
                  widthbutton: size.width * 0.25,
                  press: () {},
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
    );
  }
}
