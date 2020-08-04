import 'package:flutter/material.dart';
import 'package:coba/widgets/listBox.dart';
import 'package:coba/screens/teacherProfile.dart';
import 'package:coba/screens/teacherRating.dart';
import 'package:coba/screens/balance.dart';
import 'package:coba/widgets/button.dart';
import 'package:coba/screens/login.dart';

class TeacherAccount extends StatefulWidget {
  @override
  _TeacherAccountState createState() => _TeacherAccountState();
}

class _TeacherAccountState extends State<TeacherAccount> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 10, left: 10, bottom: 20),
              child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Devina Yolanda", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 3, left: 10),
                      child: Text("Rating : ", style: TextStyle(fontSize: 17))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2, top: 1),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 20)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3, left: 2),
                      child: Text("5", style: TextStyle(fontSize: 17))
                    ),
                  ]
                )
              ],
            )
          ],
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text("View Profile", style: TextStyle(fontSize: 15)),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
                )
              ],
            )
          )
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherRating()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text("Rating and Feedback", style: TextStyle(fontSize: 15)),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
                )
              ],
            )
          )
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Balance()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text("Balance", style: TextStyle(fontSize: 15)),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
                )
              ],
            )
          )
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text("Setting", style: TextStyle(fontSize: 15)),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
                )
              ],
            )
          )
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
          width: MediaQuery.of(context).size.width - 10,
          child: Button(
            rounded: true,
            backgroundColor: Colors.red,
            splashColor: Colors.black,
            child: Text("Log Out", style: TextStyle(color: Colors.white)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login())
              );
            },
          ),
        )
      ],
    );
  }
}