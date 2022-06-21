import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/constants.dart';
import '../components/footer.dart';

class Ordonnance extends StatefulWidget {
  const Ordonnance({Key? key}) : super(key: key);

  @override
  State<Ordonnance> createState() => _OrdonnanceState();
}

class _OrdonnanceState extends State<Ordonnance> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          color: kPrimaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "كنصحوك تاخد هاد دواء.",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                Text(
                  "خصك تعرف ان هذا الدواء تيتخاد مرا وحدة فكل فترة علاج.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      color: kRedText,
                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //pdf
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SafeArea(
                    child: Container(
                      color: Colors.grey,
                      height: size.height * 0.6,
                      width: size.width * 0.85,
                    ),
                  ),
                ),
                IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.file_download),
                  iconSize: 18,
                  color: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Footer(
                  text: "إنهاء",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
