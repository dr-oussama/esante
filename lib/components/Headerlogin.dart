import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset("assets/images/logopng.png",
                height: size.height * 0.2, width: size.width * 0.25),
          ),
          const Center(
              child: Text(
            "CHIFAE",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          )),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
