import 'package:flutter/material.dart';
import 'package:coba/screens/chooseSubject.dart';


class StudentHome extends StatefulWidget {
   @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  bool studentHomeLoading = false;
  List<String> kelas = ["SD", "SMP", "SMA IPA", "SMA IPS"];
  List<String> logo = ["assets/images/sd.png",
                        "assets/images/smp.png",
                        "assets/images/ipa.png",
                        "assets/images/ips.png" ];

  Future<Null> _refresh() async {
    //await initEditProfile();
    return null;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: studentHomeLoading ? 
        Center(child: CircularProgressIndicator(),)
        :
        Container(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
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
                            child: Text("Rp 150.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
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
                              width: MediaQuery.of(context).size.width / 3 - 15,
                              child: InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.account_balance_wallet, size: 35, color: Colors.lightBlue),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("Top Up")
                                    )
                                  ],
                                ),
                              )
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3 - 15,
                              child: InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.payment, size: 35, color: Colors.lightBlue),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("Pay")
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3 - 15,
                              child: InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.confirmation_number, size: 35, color: Colors.lightBlue),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text("Rewards")
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
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: GridView.count(
                  childAspectRatio: 0.8,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: List<Widget>.generate(4, (index){
                    return GridTile(
                      child: InkWell(
                        onTap:  (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChooseSubject(grade: index,))
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(logo[index]),
                                      fit: BoxFit.contain,
                                    ),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4.0,
                                    )
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 80.0,
                                  child: Text(kelas[index], style: TextStyle(fontSize: 15.0), overflow: TextOverflow.ellipsis),
                                  margin: EdgeInsets.only(left: 5.0, top: 3.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Container(
                child: Divider(),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 20, 0),
                child: Text("NEWS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 270,
                padding: EdgeInsets.only(left: 10, right: 10),
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
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", style: TextStyle(fontSize: 12)),
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
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider()
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 20, 0),
                child: Text("HOT DEALS & PROMO", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 270,
                padding: EdgeInsets.only(left: 10, right: 10),
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
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", style: TextStyle(fontSize: 12)),
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
            ],
          ),
        ),
      )
    );

  }
}