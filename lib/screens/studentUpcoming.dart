import 'package:flutter/material.dart';
import 'package:coba/widgets/listTeacher.dart';
import 'package:coba/screens/chooseTeacherDetail.dart';

class StudentUpcoming extends StatefulWidget {
   @override
  _StudentUpcomingState createState() => _StudentUpcomingState();
}

class _StudentUpcomingState extends State<StudentUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upcoming Schedule", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Text(""),
        centerTitle: true, 
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.lightBlue),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 10,
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChooseTeacherDetail(mode: 2))
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: ListTeacher(nama: "Devina Yolanda", rating: "★5", telepon: "081213456789", matpel: "Matematika", waktu: "Selasa, 15:00 - 17:00")
                        ),
                      ),
                      Divider()
                    ],
                  );
                }
              )
            )
          )
        ]
      ),
    );
  }
}