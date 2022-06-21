import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stagenew/conseils/pages/conseilsG.dart';
import 'package:stagenew/page/bilan.dart';
import 'package:stagenew/dashboard/dashboardtoxicite.dart';
import 'package:stagenew/page/dossier.dart';
import 'package:stagenew/conseils/pages/profileP.dart';
import '../components/constants.dart';
import '../etatgeneral/intro.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  bool audio = false;


  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      a();
    });
  }

  void a()async{
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //if(prefs.getInt('day') == null || prefs.getInt('day') != currentdate){
    // prefs.setInt('day', currentdate);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("كيفاش كتحسي اليوم؟",textAlign: TextAlign.center,),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: w*.2,
              child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  child: const Text('مزيان',style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),SizedBox(
              width: w*.2,
              child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GeneralState()),);
                  },
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  child: const Text('مريضة',style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
    //}
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 64,
              margin: const EdgeInsets.only(bottom: 23),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    verticalDirection: VerticalDirection.down,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.grey,
                            size: 30,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Text(
                            'السلام عليكم',
                            style: TextStyle(
                                fontFamily: 'montserrat',
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                          Text(
                            'حليمة السعدي',
                            style: TextStyle(
                                fontFamily: 'arabic1',
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfilePage())),
                        child: const CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('assets/images/pic.png')),
                      ),
                    ],
                  ),
                ],
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
                  childAspectRatio: (1 / .85),
                  primary: false,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/toxicite.png",
                              height: size.height * 0.1,
                            ),
                            const Text(
                              ' التسمم',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GeneralState())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/etat.png',
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'الحالة العامة',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bilan())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/bilan.png',
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'فحص الدم',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/calendar.png',
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'جدول المواعيد',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dossier())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/dossier.png",
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'الملف الطبي',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/tips.png',
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'نصائح',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  crossAxisCount: 2),
            )
          ],
        ),
      ),
    ));
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(),
    );
  }
}
