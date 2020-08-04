import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  Widget child;
  Color backgroundColor, splashColor;
  Key key;
  bool fill, rounded, border, loading;
  final VoidCallback onTap;
  
  Button({this.child, this.backgroundColor, this.onTap, this.splashColor = Colors.white, this.key, this.fill = true, this.rounded = false, this.border:true, this.loading:false});

  @override
    Widget build(BuildContext context) {
      if (loading) {
        return Center(
          child: CircularProgressIndicator()
        );
      }

      return fill ?
      RaisedButton(
        key: key,
        color: backgroundColor,
        child: child,
        splashColor: splashColor,
        onPressed: onTap,
        shape: rounded ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)):null,
      )
      :
      border ?
      OutlineButton(
        key: key,
        child: child,
        color: Colors.white,
        splashColor: splashColor,
        onPressed: onTap,
        shape: rounded ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)):null,
        borderSide: BorderSide(
          color: backgroundColor, //Color of the border
          style: BorderStyle.solid, //Style of the border
          width: 0.8, //width of the border
        ),
        highlightedBorderColor: backgroundColor,
      )
      :
      FlatButton(
        key: key,
        child: child,
        splashColor: splashColor,
        onPressed: onTap,
      );
    }
}