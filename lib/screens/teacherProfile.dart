import 'package:flutter/material.dart';
import 'package:coba/widgets/button.dart';
import 'package:coba/screens/teacherEdit.dart';

class TeacherProfile extends StatefulWidget {
  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)), 
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Full Name", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("Devina Yolanda", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Address", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("Jl. Nginden Intan E2/3", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Phone Number", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("081213456789", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Gender", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("Female", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Last Education", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("S3 MIT", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Join", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("5 Desember 2018", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Subjects", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("⚬  Kimia", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      child: Text("⚬  Fisika", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      child: Text("⚬  Matematika", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Total Students", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("8 Person", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Fee Per Hour", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                    ),
                    Container(
                      child: Text("Rp 50.000", style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                      width: MediaQuery.of(context).size.width - 10,
                      child: Button(
                        rounded: true,
                        backgroundColor: Colors.lightBlue,
                        splashColor: Colors.black,
                        child: Text("Edit Profile", style: TextStyle(color: Colors.white)),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TeacherEdit())
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}