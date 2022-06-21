import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

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
        child: Padding(
          padding: EdgeInsets.only(left: 0,top: 60,right: 40,bottom: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تسجيل اصابتك بالقيء',style: TextStyle(color: Color(0xff348ECB),fontSize: w*.05,fontWeight: FontWeight.bold,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('18/04/2022',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : وقت الظهور',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد القيء',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد الوجبات',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('3',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : درجة الخطورة',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('القرار: وصفة طبية',style: TextStyle(fontSize: 18, color: Colors.redAccent))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تسجيل اصابتك بالقيء',style: TextStyle(color: Color(0xff348ECB),fontSize: w*.05,fontWeight: FontWeight.bold,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('18/04/2022',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : وقت الظهور',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد القيء',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد الوجبات',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('3',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : درجة الخطورة',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('القرار: وصفة طبية',style: TextStyle(fontSize: 18, color: Colors.redAccent))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تسجيل اصابتك بالقيء',style: TextStyle(color: Color(0xff348ECB),fontSize: w*.05,fontWeight: FontWeight.bold,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('18/04/2022',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : وقت الظهور',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد القيء',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد الوجبات',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('3',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : درجة الخطورة',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('القرار: وصفة طبية',style: TextStyle(fontSize: 18, color: Colors.redAccent))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تسجيل اصابتك بالقيء',style: TextStyle(color: Color(0xff348ECB),fontSize: w*.05,fontWeight: FontWeight.bold,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('18/04/2022',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : وقت الظهور',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد القيء',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('2',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : عدد الوجبات',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('3',style: TextStyle(color: Colors.grey,fontSize: w*.04),),
                            Text(' : درجة الخطورة',style: TextStyle(fontSize: w*.05),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('القرار: وصفة طبية',style: TextStyle(fontSize: 18, color: Colors.redAccent))
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}