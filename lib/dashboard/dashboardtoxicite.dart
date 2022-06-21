import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/introtoxicite/introtoxiciteartro.dart';
import 'package:stagenew/introtoxicite/introtoxicitecutanee.dart';
import 'package:stagenew/introtoxicite/introtoxicitegonadique.dart';
import 'package:stagenew/introtoxicite/introtoxiciteneuro.dart';
import 'package:stagenew/introtoxicite/introtoxiciteoccu.dart';

import 'package:stagenew/components/constants.dart';

import '../home.dart';
import '../introtoxicite/introtoxicitedigestive.dart';
import '../page/homee.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool audio = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
        ),
        leadingWidth: 45,
        title: Text(
          'التسمم',
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
                  "باش تبدا الاختبار التسمم ديالك, خاصك تختار آش ضارك ",
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
                            final player = AudioCache();
                            player.play('type.aac');
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
                              builder: (context) =>
                                  const IntroToxicitedigestive())),
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
                                    'assets/images/Component 2.png',
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "الجهاز الهضمي",
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
                              builder: (context) =>
                                  const IntroToxicitegonadique())),
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
                                    'assets/images/Component 1.png',
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "الجهاز التناسلي",
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
                              builder: (context) =>
                                  const IntroToxiciteneuro())),
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
                                    'assets/images/Component 3.png',
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        " الجهاز العصبي ",
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
                              builder: (context) =>
                                  const IntroToxicitecutanee())),
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
                                    'assets/images/Component 4.png',
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        " الأمراض الجلدية",
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
                              builder: (context) =>
                                  const IntroToxiciteartro())),
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
                                    "assets/images/arthro.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "المفاصل",
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
                              builder: (context) => const IntroToxiciteoccu())),
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
                                    "assets/images/occulaire.png",
                                    height: size.height * 0.1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        // ignore: prefer_const_constructors
                                        icon: Icon(Icons.add_circle_rounded),
                                        iconSize: 16,
                                        color: kBlueButton,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        "الحاسة البصرية",
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
            ],
          ),
        ),
      ),
    );
  }
}
