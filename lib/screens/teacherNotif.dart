import 'package:flutter/material.dart';

class TeacherNotif extends StatefulWidget {
  @override
  _TeacherNotifState createState() => _TeacherNotifState();
}

class _TeacherNotifState extends State<TeacherNotif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Text(""),
        centerTitle: true, 
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete, color: Colors.lightBlue),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child:Icon(Icons.local_post_office, color: Colors.lightBlue)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 15, left: 10),
                      child: Text("New Student Booking", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                      child: Text("Devina Yolanda has booked on Tuesday, July 9 15:00 - 17:00.", style: TextStyle(fontSize: 12, color: Colors.black87), overflow: TextOverflow.ellipsis)
                    ),
                  ],
                ),
              ],
            )
          ),
          Divider(),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Icon(Icons.local_post_office, color: Colors.lightBlue)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Message from Teacher On The Way", style: TextStyle(fontSize: 15)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                      child: Text("Cari murid atau guru jadi lebih mudah loh !", style: TextStyle(fontSize: 12, color: Colors.black54))
                    ),
                  ],
                ),
              ],
            )
          ),
          Divider(),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Icon(Icons.local_post_office, color: Colors.lightBlue)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Grand Opening Teacher On The Way", style: TextStyle(fontSize: 15)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                      child: Text("Grand opening Teacher On The Way kurang 2 hari lagi nih.", style: TextStyle(fontSize: 12, color: Colors.black54))
                    ),
                  ],
                ),
              ],
            )
          ),
          Divider(),
        ]
      ),
    );
  }
}