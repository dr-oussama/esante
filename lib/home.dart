import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stagenew/settings/MyVideoPlayer.dart';
import 'package:stagenew/settings/multiswitch.dart';
import 'conseils/pages/conseilsG.dart';
import 'page/conseils.dart';
import 'page/dossier.dart';
import 'page/homee.dart';
import 'page/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'page/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [const Homee(), const Profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Homee();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Homee();
                        currentTab = 0;
                      });
                    },
                    child: Container(
                      width: 65,
                      decoration: currentTab == 0
                          ? const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Color(0xff348ECB))),
                            )
                          : const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Colors.white)),
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 0
                              ? const Icon(
                                  Icons.home,
                                  color: Color(0xff348ECB),
                                )
                              : const Icon(
                                  Icons.home_outlined,
                                  color: Colors.grey,
                                ),
                          Text('الصفحةالرئيسية',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? const Color(0xff348ECB)
                                      : Colors.grey,
                                  fontSize: 11))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Dossier();
                        currentTab = 1;
                      });
                    },
                    child: Container(
                      width: 65,
                      decoration: currentTab == 1
                          ? const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Color(0xff348ECB))),
                            )
                          : const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Colors.white)),
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 1
                              ? const Icon(
                                  Icons.medical_services,
                                  color: Color(0xff348ECB),
                                )
                              : const Icon(
                                  Icons.medical_services_outlined,
                                  color: Colors.grey,
                                ),
                          Text('الملف',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? const Color(0xff348ECB)
                                      : Colors.grey,
                                  fontSize: 11))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MainPage();
                        currentTab = 2;
                      });
                    },
                    child: Container(
                      width: 65,
                      decoration: currentTab == 2
                          ? const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Color(0xff348ECB))),
                            )
                          : const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Colors.white)),
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 2
                              ? const Icon(
                                  LineIcons.heartAlt,
                                  color: Color(0xff348ECB),
                                )
                              : const Icon(
                                  LineIcons.heart,
                                  color: Colors.grey,
                                ),
                          Text('نصائح',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? const Color(0xff348ECB)
                                      : Colors.grey,
                                  fontSize: 11))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Multiswitch();
                        currentTab = 4;
                      });
                    },
                    child: Container(
                      width: 65,
                      decoration: currentTab == 4
                          ? const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Color(0xff348ECB))),
                            )
                          : const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 3, color: Colors.white)),
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 4
                              ? const Icon(
                                  Icons.settings,
                                  color: const Color(0xff348ECB),
                                )
                              : const Icon(
                                  Icons.settings_outlined,
                                  color: Colors.grey,
                                ),
                          Text('إعدادات',
                              style: TextStyle(
                                  color: currentTab == 4
                                      ? const Color(0xff348ECB)
                                      : Colors.grey,
                                  fontSize: 11))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
