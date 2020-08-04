import 'package:flutter/material.dart';

class ListBox extends StatelessWidget{
  int type;
  Widget childs;
  Color colors, colorrr;
  final VoidCallback onTap;
  
  ListBox({this.childs, this.type, this.colors,this.onTap, this.colorrr=Colors.black12});

  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            // margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            // padding: EdgeInsets.only(left: 5),
            // width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(5)
            // ),
            child: childs
          ),
          Divider(
            color: colorrr,
          ),
        ],
      );
    }
}