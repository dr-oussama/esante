import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/conseils/pages/conseilsG.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../components/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Cons>> _getcons() async {
    var data =
        await await get(Uri.parse('http://192.168.42.231:8000/api/conseileCategorie/'), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Bearer 62a9a73e66b20c72f309ba83|6bOnp6B5bFFO3BivQwiGQXbQngN4S2DQjPli1Kf3",
    });
    var jsoonData = json.decode(data.body);
    List<Cons> conss = [];
    for (var u in jsoonData) {
      Cons cons = Cons(u["_id"], u["name"], u["C1"], u["C2"]);
      conss.add(cons);
    }
    print(conss.length);
    return conss;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
      body: Container(
        child: FutureBuilder(
          future: _getcons(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Loading...."),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(""),
                      ),
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].name),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    Conseilspp(snapshot.data[index])));
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class Cons {
  final String _id;
  final String name;
  final String c1;
  final String c2;

  Cons(this._id, this.name, this.c1, this.c2);
}

class Conseilspp extends StatefulWidget {
  final Cons tolo;
  Conseilspp(this.tolo);
  @override
  State<Conseilspp> createState() => _ConseilsppState(this.tolo);
}

class _ConseilsppState extends State<Conseilspp> {
  final Cons tolo;
  _ConseilsppState(this.tolo);
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
                          children: [
                            Expanded(
                              child: RichText(
                                textDirection: TextDirection.rtl,
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.done,
                                      color: Color(0xFF42B55B),
                                    ),
                                  ),
                                  TextSpan(
                                    text: tolo.c1,
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
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.done,
                                      color: Color(0xFF42B55B),
                                    ),
                                  ),
                                  TextSpan(
                                    text: tolo.c2,
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
