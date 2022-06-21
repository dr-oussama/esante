import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/components/coloredbuttonchoice.dart';
import 'package:stagenew/components/constants.dart';
import 'package:stagenew/components/footer.dart';
import 'package:stagenew/introtoxicite/introtoxicitecutanee.dart';
import 'package:stagenew/toxicite/cutanee/alopecie/q1.dart';
import 'package:stagenew/toxicite/cutanee/mainpieds/q1.dart';
import 'package:stagenew/toxicite/cutanee/ongles/q1.dart';
import 'package:stagenew/toxicite/cutanee/photosensibilitehyperpigmentation/q1.dart';
import 'package:stagenew/toxicite/cutanee/rashcutanee.dart/q1.dart';

import '../page/homee.dart';

class Dashboardcutanee extends StatefulWidget {
  const Dashboardcutanee({Key? key}) : super(key: key);

  @override
  State<Dashboardcutanee> createState() => _DashboardcutaneeState();
}

class _DashboardcutaneeState extends State<Dashboardcutanee> {
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
                  builder: (context) => const IntroToxicitecutanee())),
        ),
        leadingWidth: 45,
        title: Text(
          'الأمراض الجلدية ',
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
                  "باش تبدا الاختبار الأمراض الجلدية خاصك تختار صنف لي بغيتي و تقدر تبدا الاختبار",
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
                              builder: (context) => const Alopecie())),
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
                                    "assets/icons/alopecie.png",
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
                                        "داء الثعلبة ",
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
                              builder: (context) => const Photo())),
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
                                    "assets/icons/mucite.png",
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
                                        " حساسية للضوء وفرط تصبغ ",
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
                              builder: (context) => const OngleQ1())),
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
                                    "assets/icons/ongles2.png",
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
                                        "  الأظافر ",
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
                              builder: (context) => const MainQ1())),
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
                                    "assets/icons/mainpieds2.png",
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
                                        " اليدين والقدمين",
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
                              builder: (context) => const RashQ1())),
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
                                    "assets/icons/rashcutanee.png",
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
                                        " التهاب الجلدي",
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
