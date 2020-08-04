import 'package:flutter/material.dart';
import 'package:coba/screens/studentHome.dart';
import 'package:coba/screens/studentUpcoming.dart';
import 'package:coba/screens/studentProfile.dart';

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {

  int mCurrentIndex = 0;

  void onTabTapped(int index) async{
    setState(() {
      mCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _childrenMenu = [
      StudentHome(),
      StudentUpcoming(),
      StudentProfile(),
    ];

    return Scaffold(
      body: _childrenMenu[mCurrentIndex],
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        child: BottomNavigationBar(
          currentIndex: mCurrentIndex,
          type: BottomNavigationBarType.shifting,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              title: Text("Home", style: TextStyle(color: Colors.lightBlue)),
              icon: mCurrentIndex == 0 ?
              Icon(
                Icons.home,
                color: Colors.lightBlue
              )
              :
              Icon(
                Icons.home,
                color: Colors.grey
              )
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              title: Text("Schedule", style: TextStyle(color: Colors.lightBlue)),
              icon: mCurrentIndex == 1 ?
              Icon(
                Icons.assignment,
                color: Colors.lightBlue
              )
              :
              Icon(
                Icons.assignment,
                color: Colors.grey
              )
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              title: Text("Profile", style: TextStyle(color: Colors.lightBlue)),
              icon: mCurrentIndex == 2 ?
              Icon(
                Icons.person,
                color: Colors.lightBlue
              )
              :
              Icon(
                Icons.person,
                color: Colors.grey
              )
            ),
          ],
        ),
      ),
    );
  }
}