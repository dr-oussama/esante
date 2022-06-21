import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/toxicite/digestive/constipation/q1.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';
import 'package:stagenew/toxicite/digestive/vomissement/q1.dart';

import '../page/homee.dart';
import '../toxicite/digestive/diarrhee/q1.dart';

class Dashboarddigestive extends StatefulWidget {
  const Dashboarddigestive({Key? key}) : super(key: key);

  @override
  State<Dashboarddigestive> createState() => _DashboarddigestiveState();
}

class _DashboarddigestiveState extends State<Dashboarddigestive> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Homee())),),
        leadingWidth: 45,
        title: Text(
          'الجهاز الهضمي',
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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "مرحبا بك, لالا فاطمة",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          color: kGreyColor,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "باش تبدا الاختبار الجهاز الهضمي خاصك تختار صنف لي بغيتي و تقدر تبدا الاختبار",
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
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VomQ1())),
                      child: Card(
                        color: kPrimaryColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.volume_up),
                                        iconSize: 16,
                                        color: kYellowColor,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/vomi.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "التقيئ ",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: kBlueButton,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Card(
                        color: kPrimaryColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.volume_up),
                                        iconSize: 16,
                                        color: kYellowColor,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/mucite.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        " التهاب الفم ",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: kBlueButton,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConsQ1())),
                      child: Card(
                        color: kPrimaryColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.volume_up),
                                        iconSize: 16,
                                        color: kYellowColor,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/constipation.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "  إمساك ",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: kBlueButton,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DiaQ1())),
                      child: Card(
                        color: kPrimaryColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.volume_up),
                                        iconSize: 16,
                                        color: kYellowColor,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/diarhee.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        " إسهال",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: kBlueButton,
                                          ),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Footer(
                text: 'تأكيد',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
