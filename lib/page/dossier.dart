import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'details.dart';
import 'event.dart';


final Map<DateTime,List> _test = {
  DateTime(2022,4,29):['test1'],
  DateTime(2022,4,29):['test2'],
  DateTime(2022,4,30):['test3']
};




class Dossier extends StatefulWidget {
  const Dossier({Key? key}) : super(key: key);

  @override
  State<Dossier> createState() => _DossierState();
}

class _DossierState extends State<Dossier> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  bool audio=false;
  List<Event> test = [
    Event('toxicite','2022-06-08'),
    Event('toxicite','2022-06-08'),
    Event('toxicite','2022-06-08'),
  ];

  final List<DateTime> _getAttendances = [
    DateTime.utc(2022, 1, 16),
    DateTime.utc(2022, 1, 1),
    DateTime.utc(2022, 1, 28),
    DateTime.utc(2022, 1, 4),
    DateTime.utc(2022, 1, 5),
    DateTime.utc(2022, 1, 6),
    DateTime.utc(2022, 1, 7),
  ];
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    Map<DateTime, List> _listEvents;
    final currentDay = DateTime.now();
    _listEvents = {
      currentDay.add( Duration(days: 12)): ['event1','event2'],
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الطبي',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: h*.04,),
              Text(" يمكنلك تشوف ملفك الطبي منهنا",style: TextStyle(fontSize: w*.05),),
              SizedBox(
                width: w*.9,
                height: h*.09,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: audio == false ? Icon(Icons.play_arrow,
                          color: Color(0xff348ECB),
                          size: 35,):Icon(Icons.pause,
                          color: Color(0xff348ECB),
                          size: 35,),
                        onPressed: () {
                          setState(() {
                            audio = !audio;
                          });
                        },
                      ),
                      Container(width: w*.6, child: Slider(value: 0,onChanged: (val){},thumbColor: Color(0xff348ECB),)),
                      Text("00:00" , style: TextStyle(color: Color(0xff348ECB)),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chevron_left,color: Colors.black,size: w*.07,)),
                  Text('Cure 1',style: TextStyle(fontSize: w*.05),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,color: Colors.black,size: w*.07,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('بروتوكول  : الدوى الأحمر',style: TextStyle(fontSize: w*.04,color: Colors.redAccent),),
                ],
              ),
              TableCalendar(
                focusedDay:  DateTime.now(),
                firstDay: DateTime.utc(2010,01,01),
                lastDay: DateTime.utc(2040,01,01),
                rangeStartDay: DateTime.utc(2022,6,1),
                rangeEndDay: DateTime.utc(2022,6,22),

                eventLoader: (day) {
                  for(var i=0 ; i<test.length;i++){
                  if (day.day == DateTime.parse('2022-06-08').toUtc().day) {
                    return [test[1].title];
                  }}
                  return [];
                },

                //eventLoader: _getAttendances,
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  showModalBottomSheet<void>(
                    context: context,backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                        ),
                        height: h*.3,
                        width: w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0,top: 15,right: 40,bottom: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('تسجيل اصابتك بالقيء',style: TextStyle(fontSize: 18,),),
                                      Text('تسجيل اصابتك بالاسهال',style: TextStyle(fontSize: 18,),),
                                      Text('تسجيل اصابتك بالاسهال',style: TextStyle(fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            FlatButton(
                              color: Color(0xff348ECB),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Text('التفاصيل',style: TextStyle(color: Colors.white,fontSize: 18),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Details()),
                                );
                              },
                            )
                          ],
                        ),
                      );
                    },
                  );
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                },

                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedDay, date);
                },
              )
            ],
          ),
      ),
    );
  }
}