import 'package:flutter/material.dart';
import 'package:coba/screens/chooseTeacher.dart';
import 'package:coba/widgets/listBox.dart';

class ChooseSubject extends StatefulWidget {
  int mode, grade;

  //grade -> 0 = SD, 1 = SMP, 2 = IPA, 3 = IPS
  ChooseSubject({this.mode, this.grade});

  createState(){
    return _ChooseSubjectState();
  }
}

class _ChooseSubjectState extends State<ChooseSubject> {
  List<String> subjectSD = ["General", "English", "Mandarin"];
  List<String> subjectSMP = ["IPA", "IPS", "English", "Mandarin"];
  List<String> subjectIPA = ["Matematika","Fisika", "Kimia", "English", "Mandarin"];
  List<String> subjectIPS = ["Matematika", "Akuntansi", "English", "Mandarin"];
  List<String> subjectChoose = [];

  void initState(){
    super.initState();
    setState(() {
      switch (widget.grade) {
        case 0 :{
          subjectChoose = subjectSD;
        }
        break;
        case 1:{
          subjectChoose = subjectSMP;
        }
        break;
        case 2:{
          subjectChoose = subjectIPA;
        }
        break;
        case 3:{
          subjectChoose = subjectIPS;
        }
        break;
        default: {print("Invalid");}
        break;
      }
    });
  }

  Future<Null> _refresh() async {
    //await initEditProfile();
    return null;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Subject"),
      ),
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: subjectChoose.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ListBox(
            childs: ListTile(
              contentPadding: EdgeInsets.only(left: 20.0, top: 13.0),
              title: Text(subjectChoose[index]),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseTeacher())
                );
              },
            ),
          );
        },
      ),
    );
    
  }
}