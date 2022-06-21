import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../another.dart';

class CardItem {
  final String urlImage;
  final String title;
  const CardItem({
    required this.urlImage,
    required this.title,
  });
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool audio = false;

  List<CardItem> items = [
    const CardItem(
      urlImage:
          'https://cdn.pixabay.com/photo/2016/12/20/22/09/brain-1921600_960_720.jpg',
      title: 'الجهاز العصبي',
    ),
    const CardItem(
        urlImage:
            'https://media.gettyimages.com/photos/xray-of-knee-osteoarthritis-and-rheumatoid-arthritis-picture-id1180192938?s=2048x2048',
        title: 'المفاصل '),
    const CardItem(
      urlImage:
          'https://media.gettyimages.com/photos/human-stomach-medical-exam-picture-id1306663116?s=2048x2048',
      title: 'الجهاز الهضمي ',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          leadingWidth: 45,
          title: Text(
            '  النصائح ',
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
        body: Center(
            child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Column(
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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
                                color: Colors.blue,
                                size: 27,
                              )
                            // ignore: prefer_const_constructors
                            : Icon(
                                Icons.pause,
                                color: Colors.blue,
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
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Slider(
                          value: 0,
                          onChanged: (val) {},
                          thumbColor: Colors.blue,
                        ),
                      ),
                      const Text(
                        "00:00",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              'التصنيفات :',
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(117, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 3.0),
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => const SizedBox(width: 12),
                    itemBuilder: (context, index) =>
                        buildCard(item: items[index]),
                  ),
                )),
            const Text(
              'مقالات طبية:',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(117, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                16.0,
              )),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          child: Image.network(
                            "https://media.gettyimages.com/photos/laboratory-team-working-on-coronavirus-vaccine-protective-workwear-picture-id1224413537?s=2048x2048",
                            height: size.height * 0.2,
                            width: size.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(113, 33, 149, 243),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              "العلاج الإشعاعي",
                              style: const TextStyle(
                                color: Color.fromARGB(117, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(15),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.favorite_border,
                                    color: const Color.fromARGB(155, 0, 0, 0)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage())),
        child: Container(
            width: 200,
            child: Column(
              children: [
                Expanded(
                    child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Material(
                            child: Ink.image(
                              image: NetworkImage(item.urlImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))),
                const SizedBox(height: 4),
                Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                )
              ],
            )),
      );
}
