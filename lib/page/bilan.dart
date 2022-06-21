import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:stagenew/page/homee.dart';

import '../home.dart';

class Bilan extends StatefulWidget {
  const Bilan({Key? key}) : super(key: key);

  @override
  State<Bilan> createState() => _BilanState();
}

class _BilanState extends State<Bilan> {
  File? file;
  bool text = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    bool audio = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'فحص الدم',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h * .04,
            ),
            Text(
              " : المرجو ادخال هذه المعلومات",
              style: TextStyle(fontSize: w * .05),
            ),
            SizedBox(
              width: w * .9,
              height: h * .09,
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
                          ? Icon(
                              Icons.play_arrow,
                              color: Color(0xff348ECB),
                              size: 35,
                            )
                          : Icon(
                              Icons.pause,
                              color: Color(0xff348ECB),
                              size: 35,
                            ),
                      onPressed: () {
                        setState(() {
                          audio = !audio;
                        });
                      },
                    ),
                    Container(
                        width: w * .6,
                        child: Slider(
                          value: 0,
                          onChanged: (val) {},
                          thumbColor: Color(0xff348ECB),
                        )),
                    Text(
                      "00:00",
                      style: TextStyle(color: Color(0xff348ECB)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * .035,
            ),
            DottedBorder(
              color: Color(0xff348ECB),
              dashPattern: [6, 4],
              child: SizedBox(
                width: w * .8,
                height: h * .07,
                child: FlatButton(
                    onPressed: () {
                      selectFile();
                    },
                    child: Text(
                      'أضف الصورة هنا',
                      style: TextStyle(color: Color(0xff348ECB), fontSize: 18),
                    )),
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
            Text(
              'أو ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'يمكنك مسحه ضوئيًا',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
                height: h * .09,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.document_scanner,
                      size: w * .15,
                    ))),
            SizedBox(
              height: h * .03,
            ),
            SizedBox(
              height: h * .07,
              width: w * .8,
              child: TextField(
                enabled: text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Neutrophil',
                    hintText: 'Neutrophil'),
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
            SizedBox(
              height: h * .07,
              width: w * .8,
              child: TextField(
                enabled: text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Neutrophil',
                    hintText: 'Neutrophil'),
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
            SizedBox(
              height: h * .07,
              width: w * .8,
              child: TextField(
                enabled: text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Neutrophil',
                    hintText: 'Neutrophil'),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            SizedBox(
                width: w * .8,
                child: FlatButton(
                    onPressed: () {},
                    color: Color(0xff348ECB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      'تأكيد',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )))
          ],
        ),
      ),
    );
  }

  Future selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final path = result.files.single.path!;
      text = true;
      setState(() => file = File(path));
    } else {
      return;
    }
  }
}
