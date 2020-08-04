import 'package:flutter/material.dart';
import 'package:coba/screens/teacherHome.dart';
import 'package:coba/screens/teacherHistory.dart';
import 'package:coba/screens/teacherUpcoming.dart';
import 'package:coba/screens/teacherAccount.dart';
import 'package:coba/screens/teacherNotif.dart';

class Teacher extends StatefulWidget {
  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  int mCurrentIndex = 0;

  void onTabTapped(int index) async {
    setState(() {
      mCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _childrenMenu = [
      TeacherHome(), 
      TeacherUpcoming(),
      TeacherHistory(),
      TeacherNotif(),
      TeacherAccount(),
    ];

    return Scaffold(
      body: _childrenMenu[mCurrentIndex],
      bottomNavigationBar: AnimatedContainer(
        //height: 60,
        duration: Duration(milliseconds: 400),
        child: BottomNavigationBar(
          currentIndex: mCurrentIndex,
          type: BottomNavigationBarType.shifting,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: mCurrentIndex == 0? 
              Icon(
                Icons.home,
                color: Colors.lightBlue,
              )
              :
              Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              title: Text("Home", style: TextStyle(color: Colors.lightBlue))
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: mCurrentIndex == 1? 
              Icon(
                Icons.school,
                color: Colors.lightBlue,
              )
              :
              Icon(
                Icons.school,
                color: Colors.blueGrey,
              ),
              title: Text("Schedule", style: TextStyle(color: Colors.lightBlue))
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: mCurrentIndex == 2? 
              Icon(
                Icons.history,
                color: Colors.lightBlue,
              )
              :
              Icon(
                Icons.history,
                color: Colors.blueGrey,
              ),
              title: Text("History", style: TextStyle(color: Colors.lightBlue)),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: mCurrentIndex == 3? 
              Icon(
                Icons.notifications,
                color: Colors.lightBlue,
              )
              :
              Icon(
                Icons.notifications,
                color: Colors.blueGrey,
              ),
              title: Text("Notification", style: TextStyle(color: Colors.lightBlue)),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: mCurrentIndex == 4? 
              Icon(
                Icons.account_circle,
                color: Colors.lightBlue,
              )
              :
              Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
              ),
              title: Text("Account", style: TextStyle(color: Colors.lightBlue)),
            ),
          ],
        ),
      )
    );
  }
}