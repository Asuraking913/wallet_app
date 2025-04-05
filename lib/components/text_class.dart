import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  
	final String text;
	final Color color; 
  final double fontSize;
  final String fontFamily;


  MyTextField({
  		required this.color, 
  		required this.text, 
      required this.fontSize, 
      required this.fontFamily
  	});

  @override
  Widget build(BuildContext context) {
    return Text(
    		'$text',
    		style: TextStyle(color: color, fontSize: fontSize, fontFamily: fontFamily) ,
    	);
  }
}