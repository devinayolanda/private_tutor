import 'package:flutter/material.dart';
import 'package:coba/widgets/listStudent.dart';

class TeacherHistory extends StatefulWidget {
  @override
  _TeacherHistoryState createState() => _TeacherHistoryState();
}

class _TeacherHistoryState extends State<TeacherHistory> {
  List<String> arr = ["Devina Yolanda", "Ivan Hinman", "Jeremy Putra", "Jana Ariana", "Rachel Christina"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
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
          Expanded(
            child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Container(
                      child: ListStudent(2, arr[index], "SMA Petra 2", "08123456789", 12, "Kimia", "Selasa 12 Juni, 15:00 - 17:00")
                    )
                  ],
                );
              }
            )
          )
        ],
      ),
    );
  }
}