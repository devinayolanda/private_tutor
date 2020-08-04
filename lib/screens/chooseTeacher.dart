import 'package:flutter/material.dart';
import 'package:coba/screens/chooseTeacherDetail.dart';
import 'package:coba/widgets/profileBox.dart';

class ChooseTeacher extends StatefulWidget {
   @override
  _ChooseTeacherState createState() => _ChooseTeacherState();
}

class _ChooseTeacherState extends State<ChooseTeacher> {
  List<Teacher> teacher = [];

  Future<Null> _refresh() async {
    //await initAttendanceList();
    return null;
  }

  @override
  void initState() {
    teacher.add(Teacher(name: "Devina Yolanda", rating: "★5 ", graduate: "S3 MIT"));
    teacher.add(Teacher(name: "Agustinus", rating: "★4.9 ", graduate: "S3 Melbourne University"));
    teacher.add(Teacher(name: "Kriswanto", rating: "★4 ", graduate: "S2 NTU"));
    teacher.add(Teacher(name: "Andre Agashi", rating: "★4.7 ", graduate: "S1 SMU"));
    teacher.add(Teacher(name: "Robby", rating: "★4.2 ", graduate: "S2 UQ"));
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Teacher"),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: Container(
          child: ListView.builder(
            itemCount: teacher.length,
            itemBuilder: (context, index){
              return Hero(
                tag: "teacher$index",
                child: Column(
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChooseTeacherDetail(mode: 1))
                        );
                      },
                      contentPadding: EdgeInsets.only(top: 25.0, right: 8.0, left: 25.0, bottom: 15.0),
                      leading: Row(
                        children: <Widget>[
                          ProfileBox('assets/images/pp.png', 75, teacher[index].name, 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(teacher[index].graduate),
                                Text(teacher[index].rating),
                              ],
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
    
  }
}

class Teacher {
  String name, graduate, rating;
  Teacher({
    this.name,
    this.graduate,
    this.rating 
  });

}