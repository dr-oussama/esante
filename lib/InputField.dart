import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:stagenew/page/homee.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'Button.dart';
import 'another.dart';
import 'home.dart';

class InputField extends StatelessWidget {
  String hintText;
  IconData icon = Icons.person;
  ValueChanged<String> onChanged;
  InputField({
    required this.hintText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void login(String email, password) async {
      try {
        Response response =
            await post(Uri.parse('http://192.168.42.231:8000/api/login'), body: {
          'telephone': email,
          'password': password,
        });

        if (response.statusCode == 201) {
          var data = jsonDecode(response.body.toString());
          print(data['token']);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        } else {
          print('failed');
        }
      } catch (e) {
        print(e.toString());
      }
    }

    TextEditingController num = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Column(
      children: <Widget>[
        const Center(
          child: Text(
            "تسجيل الدخول",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Text(
              "الرمز الشخصي:",
              textDirection: TextDirection.rtl,
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: num,
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
                hintText: "الرمز الشخصي",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Text(
              "كلمة المرور:",
              textDirection: TextDirection.rtl,
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: pass,
            obscureText: true,
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
                hintText: "********",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Button(
          "تسجيل الدخول",
          () {
            /*Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Home()));*/
            login(num.text.toString(), pass.text.toString());
          },
        ),
      ],
    );
  }
}
