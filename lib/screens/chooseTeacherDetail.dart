import 'package:flutter/material.dart';
import 'package:coba/widgets/textField.dart';
import 'package:coba/widgets/button.dart';
import 'package:intl/intl.dart';

class ChooseTeacherDetail extends StatefulWidget {
  int mode;
  ChooseTeacherDetail({this.mode = 1});
  @override
  createState() {
    return _ChooseTeacherDetailState();
  }
}

class _ChooseTeacherDetailState extends State<ChooseTeacherDetail> {
  String _currentDay, _currentHour;
  DateTime _dateStart = DateTime.now();
  TimeOfDay _timeStart = TimeOfDay.now();
  String dateStart, timeStart;
  var temp, temp1;

  var durationController = TextEditingController();

  List<DropdownMenuItem<String>> _dropDownMenuItems = [
    DropdownMenuItem(
      value: "0",
      child: Text("Senin")
    ),
    DropdownMenuItem(
      value: "1",
      child: Text("Rabu")
    ),
    DropdownMenuItem(
      value: "2",
      child: Text("Kamis")
    ), 
    DropdownMenuItem(
      value: "3",
      child: Text("Jumat")
    ),
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItems2 = [
    DropdownMenuItem(
      value: "0",
      child: Text("11.30 - 13.30")
    ),
    DropdownMenuItem(
      value: "1",
      child: Text("13.30 - 15.30")
    ),
    DropdownMenuItem(
      value: "2",
      child: Text("15.30 - 17.30")
    ), 
  ];

  void bookTapped(){
    AlertDialog(
      title: Text("Payment"),
      content: Container(
        height: 500,
        child: ListView(
          children: <Widget>[
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text("Name"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void initState(){
    super.initState();
    DateTime tempDate = DateTime.now();
    dateStart = DateFormat('yyyy-MM-dd').format(tempDate).toString();
    timeStart = DateFormat('kk:mm').format(tempDate).toString();
    durationController.text = "1";
  }
  Future<Null> _refresh() async {
    //await initEditProfile();
    return null;
  }
  Future<Null> _selectDateStart(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _dateStart,
      firstDate: DateTime.now().subtract(Duration(days: 1)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if(picked != null){
      setState(() {
        _dateStart = picked;
        temp = picked.toString();
        temp1 = temp.split(" ");
        dateStart = temp1[0];
      });
    }
  }
  Future<Null> _selectTimeStart(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _timeStart
    );

    if(picked != null && picked != _timeStart){
      setState(() {
        _timeStart = picked;
        temp = picked.toString();
        temp1 = temp.split("TimeOfDay(");
        timeStart = temp1[1];
        temp1 = timeStart.split(")");
        timeStart = temp1[0];
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => 
               Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/16*9,
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
                      ),
                    ],
                  )
                ),
                childCount: 1,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) =>
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text("Name", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
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
                        child: Text("Total Students", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                      ),
                      Container(
                        child: Text("13 Person", style: TextStyle(fontSize: 20, color: Colors.black))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Rating", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                      ),
                      Container(
                        child: Text("★5", style: TextStyle(fontSize: 20, color: Colors.black))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Fee", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                      ),
                      Container(
                        child: Text("Rp 50.000", style: TextStyle(fontSize: 20, color: Colors.black))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Schedule", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0),
                            child: InkWell(
                              onTap: (){ if(widget.mode == 1) _selectDateStart(context); },
                              key: Key("datestart"),
                              child: TextFields(
                                type: 2,
                                date: "${dateStart}",
                                icon: new Icon(Icons.calendar_today),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0),
                            child: InkWell(
                              onTap: (){ if(widget.mode == 1) _selectTimeStart(context); },
                              key: Key("timestart"),
                              child: TextFields(
                                type: 2,
                                date: "${timeStart}",
                                icon: new Icon(Icons.access_time),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Duration", style: TextStyle(fontSize: 15, color: Colors.lightBlue))
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 7, left: 7),
                          child: TextFields(
                            controller: durationController,
                            keyboardType: TextInputType.number,
                            hintText: "Duration (Hours)",
                            enabled: widget.mode == 1 ? true : false,
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                        width: MediaQuery.of(context).size.width - 10,
                        child: widget.mode == 1 ?
                        Button(
                          rounded: true,
                          backgroundColor: Colors.lightBlue,
                          splashColor: Colors.black,
                          child: Text("Book", style: TextStyle(color: Colors.white)),
                          onTap: (){
                            int dur = int.parse(durationController.text);
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Payment"),
                                  content: Container(
                                    height: 300,
                                    child: ListView(
                                      children: <Widget>[
                                        Form(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Name"),
                                              ),
                                              Container(
                                                child: Text("Devina Yolanda"),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Schedule"),
                                              ),
                                              Container(
                                                child: Text(dateStart + " " + timeStart),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Duration"),
                                              ),
                                              Container(
                                                child: Text(durationController.text),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Fee /hour"),
                                              ),
                                              Container(
                                                child: Text("Rp 50.000"),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Total Payment"),
                                              ),
                                              Container(
                                                child: Text("Rp " + (50000*dur).toString()),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Button(
                                      child: Text("Cancel", style: TextStyle(color: Colors.white)),
                                      rounded: true,
                                      backgroundColor: Colors.red,
                                      onTap: ()async{
                                        Navigator.pop(context);
                                      },
                                    ),
                                    Button(
                                      child: Text("Pay", style: TextStyle(color: Colors.white)),
                                      rounded: true,
                                      backgroundColor: Colors.green,
                                      onTap: ()async{
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              }
                            );
                          },
                        ) : 
                        Button(
                          rounded: true,
                          backgroundColor: Colors.grey,
                          child: Text("Book", style: TextStyle(color: Colors.white)),
                          onTap: (){
                            int dur = int.parse(durationController.text);
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Payment"),
                                  content: Container(
                                    height: 300,
                                    child: ListView(
                                      children: <Widget>[
                                        Form(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Name"),
                                              ),
                                              Container(
                                                child: Text("Devina Yolanda"),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Schedule"),
                                              ),
                                              Container(
                                                child: Text(dateStart + " " + timeStart),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Duration"),
                                              ),
                                              Container(
                                                child: Text(durationController.text),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Fee /hour"),
                                              ),
                                              Container(
                                                child: Text("Rp 50.000"),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 15),
                                                child: Text("Total Payment"),
                                              ),
                                              Container(
                                                child: Text("Rp " + (50000*dur).toString()),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Button(
                                      child: Text("Cancel", style: TextStyle(color: Colors.white)),
                                      rounded: true,
                                      backgroundColor: Colors.red,
                                      onTap: ()async{
                                        Navigator.pop(context);
                                      },
                                    ),
                                    Button(
                                      child: Text("Pay", style: TextStyle(color: Colors.white)),
                                      rounded: true,
                                      backgroundColor: Colors.grey,
                                      onTap: ()async{
                                        
                                      },
                                    ),
                                  ],
                                );
                              }
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                        width: MediaQuery.of(context).size.width - 10,
                        child: Button(
                          rounded: true,
                          backgroundColor: Colors.blueGrey,
                          splashColor: Colors.black,
                          child: Text("Back", style: TextStyle(color: Colors.white)),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                childCount: 1
              ),
            )
          ],
        ),
      ),
      
    );
     
  }
}