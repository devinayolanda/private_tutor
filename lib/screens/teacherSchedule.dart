import 'package:flutter/material.dart';
import 'package:coba/widgets/listStudent.dart';
import 'package:intl/intl.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class TeacherSchedule extends StatefulWidget {
  @override
  _TeacherScheduleState createState() => _TeacherScheduleState();
}

class _TeacherScheduleState extends State<TeacherSchedule> {
  int stat = 0;
  DateTime dateNow;
  List<String> arr = ["Ivan Hinman", "Jeremy Putra", "Jana Ariana", "Rachel Christina", "Devina Yolanda"];
  List<String> arr2 = ["Selasa 11 Juni, 15:00 - 17:00", "Jumat 14 Juni, 15:00 - 17:00", "Jumat 14 Juni, 15:00 - 17:00", "Jumat 14 Juni, 15:00 - 17:00", "Senin 17 Juni, 15:00 - 17:00"];

  Widget appBarTitle = Text("All Schedule",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold));
  Icon icon = Icon(Icons.search, color: Colors.lightBlue);
  final globalKey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller = TextEditingController();
  bool _isSearching;
  String _searchText = "";

  _TeacherScheduleState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  Color hasEvent(DateTime date){
    if(date.day == 11 && date.month == 6 && date.year == 2019){
      return Colors.red;
    } else {
      return Colors.white;
    }
  }

  void setStat(){
    if(stat == 0){
      setState(() {
        stat = 1;
        dateNow = DateTime.now();
      });
    } else {
      setState(() {
        stat = 0;
        dateNow = DateTime.now();
      });
    }
  }

  void dateClicked(date){
    setState(() {
      dateNow = date;      
    });
  }

  @override
  void initState() {
    dateNow = DateTime.now();
    _isSearching = false;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    if(stat==0){
      return Scaffold(
        key: globalKey,
        appBar: AppBar(
          title: appBarTitle,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)), 
          actions: <Widget>[
            IconButton(
              icon: icon,
              onPressed: () {
                setState(() {
                  if (this.icon.icon == Icons.search) {
                    this.icon = Icon(
                      Icons.close,
                      color: Colors.lightBlue,
                    );
                    this.appBarTitle = TextField(
                      controller: _controller,
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.lightBlue),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.lightBlue)),
                        onChanged: searchOperation,
                    );
                    _handleSearchStart();
                  } else {
                    _handleSearchEnd();
                  }
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.lightBlue),
              onPressed: setStat,
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
                        child: ListStudent(1, arr[index], "SMA Petra 2", "08123456789", 12, "Kimia", arr2[index],
                        onTap: (){
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Delete"),
                                content: Text("Are you sure?"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Yes"),
                                    onPressed: (){
                                      Navigator.pop(context);
                                      setState(() {
                                        arr.removeAt(index);
                                      });
                                    },
                                  ),
                                  FlatButton(
                                    child: Text("No"),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            }
                          );
                        })
                      )
                    ],
                  );
                }
              ),
            )
          ],
        )
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("All Schedule", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)), 
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list, color: Colors.lightBlue),
              onPressed: setStat,
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Calendar(
                onDateSelected: (date){
                  dateClicked(date);
                },
                onSelectedRangeChange: (range) =>
                    print("Range is ${range.item1}, ${range.item2}"),
                dayBuilder: (BuildContext context, DateTime tanggal) {
                  return  InkWell(
                    onTap: (){dateClicked(tanggal);},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5.0, left: 7.0),
                            padding: EdgeInsets.only(left: 5),
                            child: Text(tanggal.day.toString()),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3.0),
                            child: Text(".", style: TextStyle(fontSize: 50.0, color: hasEvent(tanggal))),
                          )         
                        ],
                      )
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(DateFormat("dd-MM-yyyy").format(dateNow)),
              ),
              Container(
                height: 370.0,
                margin: EdgeInsets.only(top: 15.0),
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index){
                    return showEvents(index);
                  },  
                )
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget showEvents(index){
    if(dateNow.day == 11 && dateNow.month == 6 && dateNow.year == 2019){
      return Container(
        child: ListStudent(1, "Ivan Hinman", "SMA St. Louis 2", "08123456789", 12, "Bahasa Inggris", "Selasa 11 Juni, 12:00 - 14:00",
        onTap: (){
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context){
              return AlertDialog(
                title: Text("Delete"),
                content: Text("Are you sure?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Yes"),
                    onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                        arr.removeAt(index); 
                      });
                    },
                  ),
                  FlatButton(
                    child: Text("No"),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
          );
        })
      );
    } else {
      return Container(
        height: 50,
        alignment: Alignment.center,
        child: Text("No Schedule", style: TextStyle(fontSize: 18)),
      );
    }
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = Icon(Icons.search, color: Colors.lightBlue);
      this.appBarTitle = Text("All Schedule", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold));
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    if (_isSearching != null) {
      print("yas");
    }
  }
}