import 'package:flutter/material.dart';
import 'package:coba/widgets/button.dart';
import 'package:coba/widgets/listBox.dart';
import 'package:coba/screens/login.dart';
import 'package:coba/screens/editProfile.dart';
import 'package:coba/screens/balance.dart';



class StudentProfile extends StatefulWidget {
   @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
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
                  child: Text("Ivan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Points 1.028", style: TextStyle(fontSize: 17))
                ),
              ],
            )
          ],
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.centerLeft,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Text("Edit Profile", style: TextStyle(fontSize: 15)),
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
                  child: Text("History", style: TextStyle(fontSize: 15)),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
                  },
                )
              ],
            )
          )
        ),
        ListBox(
          childs: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Balance(mode:"-", mode2:"To ")));
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
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
                  },
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