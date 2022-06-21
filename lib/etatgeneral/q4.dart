import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/dashboard/dashboardtoxicite.dart';
import 'package:stagenew/home.dart';
import 'package:stagenew/toxicite/digestive/diarrhee/q3.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class Gsq4 extends StatefulWidget {

  @override
  State<Gsq4> createState() => _Gsq4();
}

class _Gsq4 extends State<Gsq4> {
  bool audio = false;
  List<bool> r = [false, false];
  String rep2 = '';

  Widget btn(double w, String text, Color color, int i) {
    return SizedBox(
      width: w,
      child: FlatButton(
        color: r[i] == true ? Colors.grey.shade300 : Colors.white,
        onPressed: () {
          rep2 = text;
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
          'الحالة العامة',
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
                  "assets/images/gs5.png",
                  height: size.height * 0.35,
                ),
                Text(
                  "واش عندك شكاوي أخرى ؟",
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
                      btn(size.width * .6, 'لا',
                          Colors.greenAccent, 0),
                      btn(size.width * .6, 'نعم', Colors.redAccent,
                          1),
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
                      if(rep2 == 'نعم')
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          );
                        }
                      else{
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()),
                        );
                      }

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