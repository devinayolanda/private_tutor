import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:coba/widgets/button.dart';

class TeacherEdit extends StatefulWidget {
  @override
  _TeacherEditState createState() => _TeacherEditState();
}

class _TeacherEditState extends State<TeacherEdit> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final eduController = TextEditingController();
  final feeController = TextEditingController();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    nameController.text = "Devina Yolanda";
    addressController.text = "Jl. Nginden Intan E2/3";
    eduController.text = "S3 MIT";
    feeController.text = "Rp 50.000";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate((context,index) => 
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/16*9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/768px-Circle-icons-profile.svg.png"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                    child: Container(
                      height: MediaQuery.of(context).size.width/16*9,
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
                      child: DrawerHeader(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset('assets/images/pp.png', fit: BoxFit.cover),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: Button(
                                  child: Text("Choose A Picture", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                  backgroundColor: Colors.white,
                                  rounded: true,
                                  onTap: (){}
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                childCount: 1,  
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) =>
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 10),
                          child: Text("Full Name", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0),
                          child: TextField(
                            maxLines: 1,
                            controller: nameController,
                          )
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 10),
                          child: Text("Address", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0),
                          child: TextField(
                            maxLines: 1,
                            controller: addressController,
                          )
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 10),
                          child: Text("Last Education", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0),
                          child: TextField(
                            maxLines: 1,
                            controller: eduController,
                          )
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 10),
                          child: Text("Subjects", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5),
                                    child: Text("SD", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Matematika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("IPA", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Bahasa Inggris", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ]
                              )
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5),
                                    child: Text("SMP", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Matematika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Fisika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Bahasa Inggris", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 2 - 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5),
                                    child: Text("SMA - MIPA", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Matematika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Kimia", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Fisika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Bahasa Inggris", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ]
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 2 - 5,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5),
                                    child: Text("SMA - IPS", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Matematika", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Akuntansi", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: isChecked,
                                        activeColor: Colors.lightBlue,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        child: Text("Bahasa Inggris", style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ]
                              )
                            ),
                          ],
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 10),
                          child: Text("Fee Per Hour", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0),
                          child: TextField(
                            maxLines: 1,
                            controller: feeController,
                          )
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 20, 10, 0),
                          width: MediaQuery.of(context).size.width - 10,
                          child: Button(
                            rounded: true,
                            backgroundColor: Colors.lightBlue,
                            splashColor: Colors.black,
                            child: Text("Update", style: TextStyle(color: Colors.white)),
                            onTap: () => Navigator.pop(context, true),
                          ),
                        )
                      ],
                    )
                  )
                ),
                childCount: 1,
              )
            ),
          ]
        )
    );
  }
}