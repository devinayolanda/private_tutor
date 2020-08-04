import 'package:flutter/material.dart';

class ListTeacher extends StatelessWidget {
  String nama, rating, telepon, matpel, waktu;
 
  //final VoidCallback onTap;

  ListTeacher({this.nama, this.rating, this.telepon, this.matpel, this.waktu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 5),
            child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, top: 1),
                child: Text(nama + ' - ' + telepon),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 1),
                child: Text(rating),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 1),
                child: Text(matpel),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 1),
                child: Text(waktu),
              ),
            ],
          )
        ],
      ),
    );
  }
}