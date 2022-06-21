import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/home.dart';
import '../components/constants.dart';

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
      body: SafeArea(
        child: Container(
        color: kPrimaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/conseils.png",
                  height: size.height * 0.2,
                ),
              ),
              Text(
                "كنقدموا لك بعض النصائح لغتفيدك.",
                textAlign: TextAlign.end,
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
                            child: RichText(
                              textDirection: TextDirection.rtl,
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.done,
                                    color: Color(0xFF42B55B),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "يجب على الشخص المصاب بالإسهال تجنب تناول الأطعمة الدهنية.",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: kDarkBlueColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RichText(
                              textDirection: TextDirection.rtl,
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.done,
                                    color: Color(0xFF42B55B),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "البروبيوتيك هي كائنات حية دقيقة مفيدة للجهاز الهضمي، تعمل على دعم عمل الأمعاء والمساعدة في مكافحة العدوى.",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: kDarkBlueColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RichText(
                              textDirection: TextDirection.rtl,
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.done,
                                    color: Color(0xFF42B55B),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "يفضل ان تشرب السوائل بين الوجبات بدلًا من تناولها خلال الوجبات. ويوصى بتجنب شرب الكافيين، باعتباره مدر للبول.",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: kDarkBlueColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RichText(
                              textDirection: TextDirection.rtl,
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.done,
                                    color: Color(0xFF42B55B),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      " الأطعمه التي تحوي على توابل وبهارات وخاصه الحارة واللاذعه لما لها من مفعول كبير في تسريع عمليات الهضم والحركه المعدية المعوية.",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: kDarkBlueColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'lato',
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * .8,
                      child: FlatButton(
                        color: kBlueButton,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));
                        },
                        child: Text('إنهاء',
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
            ],
          ),
        ),
      ),
      ),
    );
  }
}
