import 'package:flutter/material.dart';
import 'package:coba/widgets/button.dart';
import 'package:coba/screens/teacher.dart';
import 'package:coba/screens/student.dart';
import 'package:coba/screens/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final passCon = TextEditingController();
  final unameCon = TextEditingController();

  void dispose() {
    unameCon.dispose();
    passCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1, bottom: 40),
                  child: Image.asset('assets/images/logo.png', scale: 1.5, fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 250,
                  child: TextField(
                    controller: unameCon,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: (){},
                      ),
                      contentPadding: EdgeInsets.only(top: 0, bottom: 5),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26, width: 1.0)
                      ),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.black26),
                      labelText: "Phone Number"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 250,
                  child: TextField(
                    controller: passCon,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.lock),
                        onPressed: (){},
                      ),
                      contentPadding: EdgeInsets.only(top: 0, bottom: 5),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26, width: 1.0)
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black26),
                      labelText: "Password"
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Button(
                    rounded: true,
                    backgroundColor: Colors.lightBlue,
                    splashColor: Colors.black,
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                    onTap: (){
                      if(unameCon.text == "a"){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teacher())
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Student())
                        );
                      }
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom:15, top:20),
                  child: InkWell(
                    child: Center(
                      child: Text("Forgot Password?", style: TextStyle(color: Colors.grey)),
                    ),
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ForgetPassword())
                      // );
                    },
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Center(
                      child: Text("Register", style: TextStyle(color: Colors.grey)),
                    ),
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register())
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}