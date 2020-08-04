import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget{
  String imageUrl, nama;
  double size;
  Widget id;
  
  ProfileBox(this.imageUrl, this.size, this.nama, this.id);

  @override
    Widget build(BuildContext context) {
      return Container(
          child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(nama, style: TextStyle(fontSize: 20.0), overflow: TextOverflow.ellipsis),
                  margin: EdgeInsets.only(left: 20.0, top: 3.0),
                  width: 180.0,
                ),
                Container(
                  child: id,
                  margin: EdgeInsets.only(left: 20.0)
                )
              ],
            )
          ],
        ),
      );
    }
}