import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:stagenew/dashboard/dashboardtoxicite.dart';
import 'package:stagenew/page/homee.dart';

import '../../components/constants.dart';

class Conseils extends StatefulWidget {
  const Conseils({Key? key}) : super(key: key);

  @override
  State<Conseils> createState() => _ConseilsState();
}

class _ConseilsState extends State<Conseils> {
  bool audio = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Homee())),
        ),
        leadingWidth: 45,
        title: Text(
          '  في حالة الإسهال',
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                  "https://as1.ftcdn.net/v2/jpg/01/72/84/44/1000_F_172844496_UIo4WlrvJYPfe8Mi8FxpZPzz76xscqkx.jpg",
                  height: 200,
                  width: 300,
                ),
              ),
              SizedBox(height: 10),
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
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "يعد اتباع نظام غذائي صغير ووجبات متكررة أفضل من تناول ثلاث وجبات أكبر في اليوم للمساعدة في علاج الإسهال.",
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
                          const Icon(
                            Icons.done,
                            color: Color(0xFF42B55B),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              " يجب على الشخص المصاب بالإسهال تجنب تناول الأطعمة الدهنية. ",
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
                          const Icon(Icons.done, color: Color(0xFF42B55B)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              " البروبيوتيك هي كائنات حية دقيقة مفيدة للجهاز الهضمي،تعمل على دعم عمل الأمعاء والمساعدة في مكافحة العدوى.",
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
                          const Icon(Icons.done, color: Color(0xFF42B55B)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              " يفضل ان تشرب السوائل بين الوجبات بدلًا من تناولها خلال الوجبات. ويوصى بتجنب شرب الكافيين، باعتباره مدر للبول.  ",
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
                          const Icon(Icons.done, color: Color(0xFF42B55B)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "الأطعمه التي تحوي على توابل وبهارات وخاصه الحارة واللاذعه لما لها من مفعول كبير في تسريع عمليات الهضم والحركه المعدية المعوية",
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
                          const Icon(Icons.done, color: Color(0xFF42B55B)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              " اختيار الوقت المناسب لتناول الطعام، وتذكر أن عينك تأكل معك، فلذلك حاول الاعتناء بالطعام وتحضيره بتأ",
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
                          const Icon(Icons.done, color: Color(0xFF42B55B)),
                        ],
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
