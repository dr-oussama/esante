import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class Alopecie extends StatefulWidget {
  const Alopecie({Key? key}) : super(key: key);

  @override
  State<Alopecie> createState() => _Alopecie();
}

class _Alopecie extends State<Alopecie> {
  bool audio = false;
  List<bool> r = [false, false, false];
  String zone = '';

  Widget btn(double w, String text, Color color, List b, int i) {
    return SizedBox(
      width: w,
      child: FlatButton(
        color: b[i] == true ? Colors.grey.shade300 : Colors.white,
        onPressed: () {
          zone = text;
          setState(() {
            b[i] = !b[i];
          });
        },
        child: Text(text,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: color, width: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            onPressed: () => Navigator.of(context).pop()),
        leadingWidth: 45,
        title: Text(
          ' داءالثعلبة',
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
      body: Container(
        color: kPrimaryColor,
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              children: [
                Image.asset(
                  "lib/assets/alopecie.png",
                  height: size.height * 0.35,
                ),
                Text(
                  "فين كتعاني من هاد داء ؟  ",
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
                    SizedBox(
                      width: size.width * .8,
                      height: size.height * .09,
                      child: Card(
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
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  height: size.height * .2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      btn(size.width * .6, 'الحاجبين', Colors.blueAccent, r, 0),
                      btn(size.width * .6, 'الشعر ', Colors.yellowAccent, r, 1),
                      btn(size.width * .6, 'رموش العين ', Colors.greenAccent, r,
                          2),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                // ignore: prefer_const_constructors

                Footer(
                  text: 'الإضافة',
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