import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'q2.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class VomQ5 extends StatefulWidget {
  String rep1 = '';
  String rep2 = '';
  List<String> rep3 = [];
  String rep4 = '';
  VomQ5(this.rep1, this.rep2, this.rep3, this.rep4);

  @override
  State<VomQ5> createState() => _VomQ5();
}

class _VomQ5 extends State<VomQ5> {
  bool audio = false;
  List<bool> r = [false, false];
  String rep5 = '';

  Widget btn(double w, String text, Color color, int i) {
    return SizedBox(
      width: w,
      child: FlatButton(
        color: r[i] == true ? Colors.grey.shade300 : Colors.white,
        onPressed: () {
          rep5 = text;
          setState(() {
            r = r.map<bool>((v) => false).toList();
            r[i] = !r[i];
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
        title: Text(
          'التقيئ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
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
                  "assets/images/vomissement.png",
                  height: size.height * 0.35,
                ),
                Text(
                  "واش كتحسن بالعلاج ؟",
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
                      btn(size.width * .6, 'نعم', Colors.greenAccent, 0),
                      btn(size.width * .6, 'لا', Colors.redAccent, 1),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: size.width * .8,
                  child: FlatButton(
                    color: kBlueButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VomQ5(
                                widget.rep1, widget.rep2, widget.rep3, rep5)),
                      );
                    },
                    child: Text('الإضافة',
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
        ),
      ),
    );
  }
}
