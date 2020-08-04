import 'package:flutter/material.dart';

class TextFields extends StatelessWidget{
  String hintText, labelText, message, alertMessage, date, time;
  bool obscureText, enabled;
  TextEditingController controller;
  TextInputType keyboardType;
  IconButton prefixIcon, suffixIcon;
  int maxLines, type;
  FormFieldValidator<String> validator;
  ValueChanged<String> onSubmitted;
  Key key;
  FocusNode focusNode;
  TextInputAction textInputAction;
  VoidCallback onPressed;
  Icon icon;
  TextAlign textAlign;
  bool isFullDate, autoFocus;


  TextFields({
    this.type = 1,
    this.controller, 
    this.hintText, 
    this.labelText = "", 
    this.obscureText = false, 
    this.keyboardType, 
    this.message, 
    this.prefixIcon, 
    this.suffixIcon, 
    this.maxLines, 
    this.validator, 
    this.onSubmitted, 
    this.alertMessage, 
    this.key, 
    this.enabled,
    this.focusNode,
    this.textInputAction,
    this.date,
    this.time,
    this.icon,
    this.isFullDate = false,
    this.autoFocus = false,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context){
    if(type == 1){
      return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextField(
          autofocus: autoFocus,
          key: key,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLines,
          textAlign: textAlign,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.only(top: 0, bottom: 5),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 1.0)
            ),
            hintText: "$hintText",
            hintStyle: TextStyle(color: Colors.black26),
            labelText: "$labelText",
          ),
          controller: controller,
          onSubmitted: onSubmitted,
          enabled: enabled,
          focusNode: focusNode,
          textInputAction: textInputAction,
        )
      );   
    } else if (type == 2) {
      return Container(
        width: isFullDate ? MediaQuery.of(context).size.width / 2 : MediaQuery.of(context).size.width / 2 - 35,
        decoration: ShapeDecoration(
          shape: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 1.0)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Text("${date}", style: TextStyle(fontSize: 15.0)),                        
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: IconTheme(
                child: icon,
                data: new IconThemeData(color: Colors.black),              
              ),
            )
          ], 
        ),
      );
    }else {
      return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          key: key,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLines,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,         
            contentPadding: EdgeInsets.all(10),  
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 1.0)
            ),
            border: OutlineInputBorder(),
            hintText: "$hintText",
            hintStyle: TextStyle(color: Colors.black26),
            labelText: "$labelText",
          ),
          controller: controller,
          validator: validator,
          enabled: enabled,
          focusNode: focusNode,
          textInputAction: textInputAction,
        )
      );
    }
    
    
  } 
  
}