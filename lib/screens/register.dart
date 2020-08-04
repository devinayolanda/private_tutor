import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:coba/widgets/textField.dart';
import 'package:coba/widgets/button.dart';

class Register extends StatefulWidget {
  int mode, id;

  //mode -> 1 = student, 2 = teacher
  Register({this.mode, this.id});

  createState(){
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  bool registerLoading = false;
  bool buttonImageLoading = false;
  bool buttonEditLoading = false;
  DateTime _date = DateTime.now();
  String birthdayDate;
  var tempString, tempSplit;

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var schoolController = TextEditingController();
  var classController = TextEditingController();

  int _radioValue = -1;

  String _current;
  List<DropdownMenuItem<String>> _dropDownMenuItems = [
    DropdownMenuItem(
      value: "0",
      child: Text("SD")
    ),
    DropdownMenuItem(
      value: "1",
      child: Text("SMP")
    ),
    DropdownMenuItem(
      value: "2",
      child: Text("SMA IPA")
    ), 
    DropdownMenuItem(
      value: "3",
      child: Text("SMA IPS")
    ),
  ];

  File image;
  picker() async {
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if(img != null){
      setState(() {
        image = img;
      });
    }
  }
  String getBase64Image(File img){
    List<int> imagesBytes = img.readAsBytesSync();
    String base64Image = base64Encode(imagesBytes);
    return base64Image;  
  }

  void initState(){
    super.initState();
    setState(() {
      birthdayDate = DateFormat("dd-MMMM-yyyy").format(_date);
    });
  }

  // initRegister() async {
  //   setState(() {
  //     RegisterLoading = true;
  //   });

  //   _user = await userApi.getUser(context, widget.id);

  //   setState(() {
  //     _user = _user;
  //     RegisterLoading = false;
  //     nameController = TextEditingController(text: _user.name);
  //     phoneController = TextEditingController(text: _user.phone);
  //     addressController = TextEditingController(text: _user.address);
  //     cityController = TextEditingController(text: _user.city);
  //     emailController = TextEditingController(text: _user.email);
  //     birthdayDate = DateFormat("dd-MMMM-yyyy").format(_user.birthday);
  //   });
  // }

  Future<Null> _refresh() async {
    //await initRegister();
    image = null;
    return null;
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1900),
      lastDate: DateTime(2020),
    );

    if(picked != null && picked != _date){
      setState(() {
        _date = picked;
        tempString = picked.toString();
        tempSplit = tempString.split(" ");
        birthdayDate = tempSplit[0];
      });
    }
  }
 

  void _handleRadioValueChange(int value){
    setState(() {
      _radioValue = value;
    });
    print(_radioValue);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: registerLoading ? 
        Center(
          child: CircularProgressIndicator(),
        )
        : 
        CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => 
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/16*9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: image == null ?
                      AssetImage('assets/images/pp.png')
                      :
                      FileImage(image), fit: BoxFit.cover
                    )
                  ),
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
                      child: DrawerHeader(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                child: image == null ?
                                Image.asset('assets/images/pp.png', fit: BoxFit.cover)
                                : 
                                Image.file(image),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                              buttonImageLoading ? 
                              Padding(
                                padding: EdgeInsets.only(top:15, bottom:5),
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(),
                                  ]
                                )
                              )
                              :
                              Container(
                                child: RaisedButton(
                                  child: Text("Add Profile Pictre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                  color: Colors.white,
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                  onPressed: () async {
                                    await picker();
                                  }
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                childCount: 1,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => 
                Container(
                  padding: EdgeInsets.all(5),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 15.0),
                          child: Text("Name", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7, left: 7),
                          child: TextFields(
                            controller: nameController,
                            keyboardType: TextInputType.multiline,
                            hintText: "Name",
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0),
                          child: Text("Gender", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Radio(
                                value: 0,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(fontSize: 16.0, color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 30),
                              ),
                              Radio(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(fontSize: 16.0, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0),
                          child: Text("Address", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7, left: 7),
                          child: TextFields(
                            controller: addressController,
                            keyboardType: TextInputType.multiline,
                            hintText: "Address",
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0),
                          child: Text("Birth Date", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 7.0, right: 7.0),
                              child: InkWell(
                                onTap: (){ _selectDate(context); },
                                child: TextFields(
                                  type: 2,
                                  isFullDate: true,
                                  date: "${birthdayDate}",
                                  icon: new Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 15.0),
                          child: Text("Email", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7, left: 7),
                          child: TextFields(
                            controller: nameController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: "Email",
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 15.0),
                          child: Text("Phone Number", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7.0, left: 7.0),
                          child: TextFields(
                            controller: phoneController,
                            keyboardType: TextInputType.number,
                            hintText: "Phone Number",
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 15.0),
                          child: Text("School", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7.0, left: 7.0),
                          child: TextFields(
                            controller: schoolController,
                            keyboardType: TextInputType.multiline,
                            hintText: "School",
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0, top: 15.0),
                          child: Text("Grade", style: TextStyle(fontSize: 16.0, color: Colors.grey))
                        ),
                        Container(
                          margin:  EdgeInsets.only(left: 7.0, right: 7.0),
                          child: DropdownButton(
                            isExpanded: true,
                            value: _current,
                            items: _dropDownMenuItems,
                            onChanged: (selected) {
                              setState(() {
                                _current = selected;
                                print(_current);
                              });
                            }
                          ),
                        ),
                        buttonEditLoading ? 
                        Padding(
                          padding: EdgeInsets.only(top:10),
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                            ]
                          )
                        )
                        :
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                          width: MediaQuery.of(context).size.width,
                          child: Button(
                            rounded: true,
                            child: Text("Reigster", style: TextStyle(color: Colors.white)),
                            backgroundColor: Colors.blueGrey,
                            splashColor: Colors.black,
                            onTap: (){
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("Alert"),
                                    content: Text("Register Success"),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text("OK"),
                                        onPressed: (){
                                          Navigator.of(context).pop();            
                                        },
                                      )
                                    ],
                                  );
                                }
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                childCount: 1
              ),
            ),
          ],
        ),
      ),
      
    );
    
  }
}