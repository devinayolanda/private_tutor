import 'package:flutter/material.dart';
import 'package:coba/widgets/listBox.dart';

class Balance extends StatefulWidget {
  String mode, mode2;

  Balance({this.mode="+", this.mode2="From "});

  @override
  State<StatefulWidget> createState() {
    return _BalanceState();
  }
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Balance", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.lightBlue), onPressed: () => Navigator.pop(context, true)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.greenAccent],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text("YOUR CURRENT BALANCE", style: TextStyle(fontSize: 15))
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 110),
                      child: Text("IDR", style: TextStyle(fontSize: 15, color: Colors.black54)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 15),
                      child:Text("50.000", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)
                      )
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                        child:Text("143", style: TextStyle(fontSize: 18)
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                        child:Text("Reward Point", style: TextStyle(fontSize: 15, color: Colors.black54)
                      )
                    ),
                  ],
                ),
              ]
            )
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 8, top: 15),
                  child: Text("Recent Activity", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54))
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 5, top: 15),
                  child: Column(
                    children: <Widget>[
                      ListBox(
                        childs: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 5),
                                  child: Text(widget.mode2+"Devina Yolanda", style: TextStyle(fontSize: 15))
                                )
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 35, top: 20, bottom: 5),
                                  child: Text(widget.mode+"Rp 100.000", style: TextStyle(fontSize: 15))
                                )
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 5),
                                  child: Text(widget.mode2+"Jana Ariana", style: TextStyle(fontSize: 15))
                                )
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 35, top: 20, bottom: 5),
                                  child: Text(widget.mode+"Rp 50.000", style: TextStyle(fontSize: 15))
                                )
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(top: 20, bottom: 5),
                                  child: Text(widget.mode2+"Jeremy Putra", style: TextStyle(fontSize: 15))
                                )
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 35, top: 20, bottom: 5),
                                  child: Text(widget.mode+"Rp 100.000", style: TextStyle(fontSize: 15))
                                )
                              ),
                              IconButton(
                                icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
                              )
                            ],
                          )
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}