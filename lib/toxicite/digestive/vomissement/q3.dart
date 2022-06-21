import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:stagenew/toxicite/digestive/vomissement/q4.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';

class VomQ3 extends StatefulWidget {
  String rep1 = '';
  String rep2 = '';
  VomQ3(this.rep1, this.rep2);

  @override
  State<VomQ3> createState() => _VomQ3();
}

class _VomQ3 extends State<VomQ3> {
  bool audio = false;
  List<bool> r = [false, false, false, false];
  List<String> rep3 = [];

  Future<void> insertOrdonnance() async {
    final rep = await http.post(Uri.parse("http://192.168.42.231/test.php"),
        body: {
          "frequence": widget.rep1,
          "nbrepas": widget.rep2,
          "signes": rep3.toString()
        });
    if (rep.statusCode == 200) {
      print(rep.body);
    } else {
      throw Exception();
    }
  }

  Widget btn(double w, String text, Color color, List b, int i) {
    return SizedBox(
      width: w,
      child: FlatButton(
        color: b[i] == true ? Colors.grey.shade300 : Colors.white,
        onPressed: () {
          setState(() {
            b[i] = !b[i];
            if (b[i] == true) {
              rep3.add(text);
            } else {
              rep3.remove(text);
            }
          });
          print(rep3);
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
                  "واش عندك أي من هذه العلامات؟",
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
                  child: Column(
                    children: <Widget>[
                      btn(size.width * .6, 'الغموض والارتباك العصبي',
                          Colors.blueAccent, r, 3),
                      btn(size.width * .6, 'تبول أقل تواترا',
                          Colors.greenAccent, r, 0),
                      btn(size.width * .6, 'البول أغمق من المعتاد',
                          Colors.orangeAccent, r, 1),
                      btn(size.width * .6, 'خسارة الوزن', Colors.redAccent, r,
                          2),
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
                            builder: (context) =>
                                VomQ4(widget.rep1, widget.rep2, rep3)),
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
