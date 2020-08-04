import 'package:flutter/material.dart';
import 'package:coba/screens/balance.dart';

class TeacherHome extends StatefulWidget {
  @override
  _TeacherHomeState createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 10,
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 20, bottom: 5),
                          child: Text("Balance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
                        )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 10,
                        child: Container(
                          margin: EdgeInsets.only(left: 65, top: 20, bottom: 5),
                          child: Text("Rp 200.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
                        )
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Container(child: Divider())
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, left: 10),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 15,
                            child: InkWell(
                              onTap: (){},
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.payment, size: 35, color: Colors.lightBlue),
                                  Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text("Transfer")
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 15,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Balance()));
                              },
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.confirmation_number, size: 35, color: Colors.lightBlue),
                                  Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text("History")
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    )
                  )
                ],
              ),
            ),
            ExpansionTile(
              title: Row(
                children: <Widget>[
                  !isSwitched?
                  Container(
                    height: 15,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green
                    ),
                  )
                  :
                  Container(
                    height: 15,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  )
                  ,
                  Container(
                    child: Text("Status : ", style: TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                  !isSwitched?
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text("Active", style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold)),
                  )
                  :
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text("Inactive", style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: Icon(Icons.insert_chart, color: Colors.deepPurple, size: 40)
                    ),
                    Container(
                      child: Text("100%", style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Icon(Icons.person, color: Colors.indigoAccent, size: 40)
                    ),
                    Container(
                      child: Text("4 Person", style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("You have completed 4 entries today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Divider(),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 5, left: 38),
                      child: Text("Inactive", style: TextStyle(fontSize: 18)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Switch(

                        activeColor: Colors.lightBlue,
                        value: isSwitched,
                        onChanged: (value) {
                          if(isSwitched){
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Active"),
                                  content: Text("Do you want to be active now?"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Yes"),
                                      onPressed: (){
                                        Navigator.pop(context);
                                        setState(() {
                                          isSwitched = value;
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
                          } else {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Inactive"),
                                  content: Text("Do you want to be inactive now?"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("Yes"),
                                      onPressed: (){
                                        Navigator.pop(context);
                                        setState(() {
                                          isSwitched = value;
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
                          }
                        },
                      )
                    )
                  ],
                )
              ]
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 20, 0),
              child: Text("NEWS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 270,
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(bottom: 10),
              child: ListView.builder(
                padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 5,
                    child: Container(
                      height: 270,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topCenter,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://is2-ssl.mzstatic.com/image/thumb/Video2/v4/e1/69/8b/e1698bc0-c23d-2424-40b7-527864c94a8e/pr_source.lsr/268x0w.png")
                              )
                            )
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                            alignment: Alignment.centerLeft,
                            child: Text("Grand Opening Teacher On The Way", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                            alignment: Alignment.centerLeft,
                            child: Text("A grand opening marks the official opening of a newly-constructed location or the start of an event. Opening ceremonies at large events might involve thousands of participants and be watched worldwide.", style: TextStyle(fontSize: 12)),
                          ),
                          Divider(height: 2),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 5, 15),
                            alignment: FractionalOffset.bottomCenter,
                            child: Text("More...", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ExpansionTile(
              title: Text("Upcoming Schedule (This Week)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(" "),
                      margin: EdgeInsets.only(top: 3.0, left: 13),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text("3 Person", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
                        margin: EdgeInsets.only(top: 3.0, right: 13.0),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 13),
                  child: GridView.count(
                    childAspectRatio: 0.8,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: List<Widget>.generate(3, (index) {
                      return GridTile( 
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
                                ),
                                Container(
                                  width: 80.0,
                                  child: Text("Jeremy Putra", style: TextStyle(fontSize: 15.0), overflow: TextOverflow.ellipsis),
                                  margin: EdgeInsets.only(left: 5.0, top: 3.0),
                                ),
                              ],
                            ) 
                          ),
                        )
                      );
                    }),
                  )
                )
              ]
            ),
            ExpansionTile(
              title: Text("Recent Schedule", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(" "),
                      margin: EdgeInsets.only(top: 3.0, left: 13),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text("8 Person", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
                        margin: EdgeInsets.only(top: 3.0, right: 13.0),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 13),
                  child: GridView.count(
                    childAspectRatio: 0.8,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: List<Widget>.generate(8, (index) {
                      return GridTile( 
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
                                ),
                                Container(
                                  width: 80.0,
                                  child: Text("Devina Yolanda", style: TextStyle(fontSize: 15.0), overflow: TextOverflow.ellipsis),
                                  margin: EdgeInsets.only(left: 5.0, top: 3.0),
                                ),
                              ],
                            ) 
                          ),
                        )
                      );
                    }),
                  )
                )
              ]
            ),
          ],
        )
      )
    );
  }
}