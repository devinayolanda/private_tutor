import 'package:flutter/material.dart';
import 'package:coba/widgets/listStudent.dart';
import 'package:coba/widgets/button.dart';
import 'package:coba/screens/teacherSchedule.dart';


class TeacherUpcoming extends StatefulWidget {
  @override
  _TeacherUpcomingState createState() => _TeacherUpcomingState();
}

class _TeacherUpcomingState extends State<TeacherUpcoming> {
  List<String> arr = ["Jeremy Putra", "Jana Ariana", "Rachel Christina"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upcoming Schedule", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Text(""),
        centerTitle: true, 
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => 
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 3 - 18,
                              child: InkWell(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Today", style: TextStyle(fontSize: 15))
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("1", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
                                    )
                                  ],
                                ),
                              )
                            ),
                            Container(
                              height: 50.0,
                              width: 1.0,
                              color: Colors.grey,
                              margin: EdgeInsets.only(top: 10),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3 - 13,
                              child: InkWell(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("This Week", style: TextStyle(fontSize: 15))
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("3", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
                                    )
                                  ],
                                ),
                              )
                            ),
                            Container(
                              height: 50.0,
                              width: 1.0,
                              color: Colors.grey,
                              margin: EdgeInsets.only(top: 10),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3 - 18,
                              margin: EdgeInsets.only(left: 5),
                              child: InkWell(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("This Month", style: TextStyle(fontSize: 15))
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("4", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
                                    )
                                  ],
                                ),
                              )
                            )
                          ],
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: MediaQuery.of(context).size.width - 50,
                      child: Button(
                        rounded: true,
                        backgroundColor: Colors.lightBlue,
                        splashColor: Colors.black,
                        child: Text("See All Schedule", style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TeacherSchedule())
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => 
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                child: Text("Today", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
              ),
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => 
              Container(
                child: ListStudent(2, "Ivan Hinman", "SMA St. Louis 2", "08123456789", 12, "Bahasa Inggris", "Selasa 11 Juni, 12:00 - 14:00")
              ),
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => 
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                child: Text("This Week", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
              ),
              childCount: 1,
            ),
          ),
          
          SliverToBoxAdapter(
            child: Container(
              height: 85*arr.length.toDouble(),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: IgnorePointer(
                  child: ListView.builder(    
                    itemCount: arr.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: ListStudent(2, arr[index], "SMA Petra 2", "08123456789", 12, "Kimia", "Jumat 14 Juni, 15:00 - 17:00")
                      );
                    }
                  )
                )
              )  
            ),
          ),
        ],
      )
      // Column(
      //   children: <Widget>[
      //     Container(
      //       margin: EdgeInsets.only(top: 40),
      //       child: Text("Upcoming Schedule", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      //     ),
      //     Card(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      //       child: Column(
      //         children: <Widget>[
      //           Container(
      //             margin: EdgeInsets.only(bottom: 10, left: 10),
      //             child: Container(
      //               child: Row(
      //                 children: <Widget>[
      //                   Container(
      //                     width: MediaQuery.of(context).size.width / 3 - 18,
      //                     child: InkWell(
      //                       child: Column(
      //                         children: <Widget>[
      //                           Container(
      //                             margin: EdgeInsets.only(top: 10),
      //                             child: Text("Today", style: TextStyle(fontSize: 15))
      //                           ),
      //                           Container(
      //                             margin: EdgeInsets.only(top: 2),
      //                             child: Text("1", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
      //                           )
      //                         ],
      //                       ),
      //                     )
      //                   ),
      //                   Container(
      //                     height: 50.0,
      //                     width: 1.0,
      //                     color: Colors.grey,
      //                     margin: EdgeInsets.only(top: 10),
      //                   ),
      //                   Container(
      //                     width: MediaQuery.of(context).size.width / 3 - 13,
      //                     child: InkWell(
      //                       child: Column(
      //                         children: <Widget>[
      //                           Container(
      //                             margin: EdgeInsets.only(top: 10),
      //                             child: Text("This Week", style: TextStyle(fontSize: 15))
      //                           ),
      //                           Container(
      //                             margin: EdgeInsets.only(top: 2),
      //                             child: Text("3", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
      //                           )
      //                         ],
      //                       ),
      //                     )
      //                   ),
      //                   Container(
      //                     height: 50.0,
      //                     width: 1.0,
      //                     color: Colors.grey,
      //                     margin: EdgeInsets.only(top: 10),
      //                   ),
      //                   Container(
      //                     width: MediaQuery.of(context).size.width / 3 - 18,
      //                     margin: EdgeInsets.only(left: 5),
      //                     child: InkWell(
      //                       child: Column(
      //                         children: <Widget>[
      //                           Container(
      //                             margin: EdgeInsets.only(top: 10),
      //                             child: Text("This Month", style: TextStyle(fontSize: 15))
      //                           ),
      //                           Container(
      //                             margin: EdgeInsets.only(top: 2),
      //                             child: Text("4", style: TextStyle(color: Colors.lightBlue, fontSize: 15))
      //                           )
      //                         ],
      //                       ),
      //                     )
      //                   )
      //                 ],
      //               )
      //             )
      //           ),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.only(top: 15),
      //       child: Text("Today", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
      //     ),
      //     Container(
      //       child: ListStudent(2, "Someone", "SMA St. Louis 2", "08123456789", 12, "Bahasa Inggris", "Selasa 12 Juni, 12:00 - 14:00")
      //     ),
      //     Container(
      //       margin: EdgeInsets.only(top: 15),
      //       child: Text("This Month", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
      //     ),
      //     Expanded(
      //       child: IgnorePointer(
      //         child: ListView.builder(
      //           itemCount: arr.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return Container(
      //               child: ListStudent(2, arr[index], "SMA Petra 2", "08123456789", 12, "Kimia", "Jumat 14 Juni, 15:00 - 17:00")
      //             );
      //           }
      //         )
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}