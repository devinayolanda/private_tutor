import 'package:flutter/material.dart';

class ListStudent extends StatelessWidget {
  String nama, sekolah, telepon, matpel, waktu;
  int kelas, type;
  final VoidCallback onTap;

  ListStudent(this.type, this.nama, this.sekolah, this.telepon, this.kelas, this.matpel, this.waktu, {this.onTap});

  @override
  Widget build(BuildContext context) {
    if(type==1){
      return Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 8, left: 5),
              child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(nama + ' - ' + telepon),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 10, top: 1),
                  child: Text(sekolah + ', Kelas ' + kelas.toString()),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 10, top: 1),
                  child: Text(matpel),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 10, top: 1, bottom: 5),
                  child: Text(waktu),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 15, left: 15),
              child: IconButton(
                icon: Icon(Icons.cancel, color: Colors.redAccent),
                onPressed: onTap,
              )
            )
          ],
        ),
      );
    } else if(type==2){
      return Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 8, left: 5),
              child: Image.asset('assets/images/pp.png', fit: BoxFit.cover)
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Text(nama + ' - ' + telepon),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 1),
                  child: Text(sekolah + ', Kelas ' + kelas.toString()),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 1),
                  child: Text(matpel),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 1, bottom: 5),
                  child: Text(waktu),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}