import 'package:flutter/material.dart';

class TeacherRating extends StatefulWidget {
  @override
  _TeacherRatingState createState() => _TeacherRatingState();
}

class _TeacherRatingState extends State<TeacherRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating and Feedback", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 130, top: 30),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 50, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 45, left: 5),
                      child:Text("5", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)
                      )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text("YOUR CURRENT RATING", style: TextStyle(color: Colors.white54, fontSize: 15))
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  margin: EdgeInsets.only(bottom: 5),
                  child: Divider(color: Colors.white),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 55),
                            child:Text("8", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 55, bottom: 20),
                            child:Text("COMPLETED", style: TextStyle(color: Colors.white54, fontSize: 15)
                          )
                        ),
                      ],
                    ),
                     Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 100),
                            child:Text("3", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100, bottom: 20),
                            child:Text("5 STAR", style: TextStyle(color: Colors.white54, fontSize: 15)
                          )
                        ),
                      ],
                    )
                  ],
                )
              ]
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Icon(Icons.comment, color: Colors.lightBlue)
              ),
              Container(
                margin: EdgeInsets.only(left: 8, top: 15),
                child: Text("FEEDBACK", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              )
            ],
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text("Anonymous", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Sangat membantu. Mantap!", style: TextStyle(fontSize: 15, color: Colors.black54))
                ),
                Container(
                  child: Divider(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text("10 June 2019", style: TextStyle(fontSize: 13, color: Colors.black26))
                ),
              ],
            )
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text("Vincentia Ramoz", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Terima kasih. Sukses terus.", style: TextStyle(fontSize: 15, color: Colors.black54))
                ),
                Container(
                  child: Divider(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text("8 June 2019", style: TextStyle(fontSize: 13, color: Colors.black26))
                ),
              ],
            )
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text("Anonymous", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("★", style: TextStyle(color: Colors.yellow, fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("", style: TextStyle(fontSize: 15, color: Colors.black54))
                ),
                Container(
                  child: Divider(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text("1 June 2019", style: TextStyle(fontSize: 13, color: Colors.black26))
                ),
              ],
            )
          )
        ],
      )
    );
  }
}