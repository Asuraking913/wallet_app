import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math; 

class CardTemplate extends StatelessWidget {
  
	final String number = '2345028374562834';
	final String expDate;
	final String cardType;
	final Color topColorType;
	final Color bottomColorType;
	final Color textColor;

	CardTemplate({
	 required this.expDate, 
	 required this.cardType, 
	 required this.topColorType, 
	 required this.bottomColorType, 
	 required this.textColor
	 });


  @override
  Widget build(BuildContext context) {

  	String cardTypePath = cardType == 'master' ? "asset/master.png" : 'asset/visa.png';

    return Container(
    		padding: EdgeInsets.all(10),

    		child: Column(
    				children: <Widget>[

    					Container(
    							child: Stack(
    									children: [

    										cardType == "visa"

    										?

    										ClipRRect(
    											borderRadius: BorderRadius.only(
    													topLeft: Radius.circular(15),
    													topRight: Radius.circular(15),
    												),
    												child: Image.asset('asset/card.jpeg'),
    											)

    										: 

    										ClipRRect(
    											borderRadius: BorderRadius.only(
    													topLeft: Radius.circular(15),
    													topRight: Radius.circular(15),
    												),
    												child: Opacity(
    													opacity: 0.5,
    													child: Image.asset('asset/card.jpeg')
    												),
    											),

    										Positioned(
    												right: 8,
    												top: 0,
    												child: Image.asset(cardTypePath, width: 70, height: 70,),
    											), 
    										Positioned(
    												left: 8,
    												top: 20,
    												child: Transform.rotate(
    														angle: math.pi / 2,
    														child: Icon(
    																Icons.wifi, 
    																color: textColor,
    															),
    													)
    											)
    									],
    								),
    						),


    					Container(
    						padding: EdgeInsets.fromLTRB(20, 30, 10, 20),
    						decoration: BoxDecoration(
    								color: bottomColorType,
    								borderRadius: BorderRadius.only(
    										bottomLeft: Radius.circular(15),
    										bottomRight: Radius.circular(15)
    									)
    							),
    					  child: Row(
    					  	children: <Widget>[
    					  		Column(
    					  		crossAxisAlignment: CrossAxisAlignment.start,
    					  		  children: [
    					  		  		Row(
    					  		  				children: [
    					  		  					CardNumberText(text: '${number.substring(0, 4)}', number: 12, textColor: textColor,),
    					  		  					SizedBox(width: 5),
    					  		  					CardNumberText(text: '${number.substring(4, 8)}', number: 12, textColor: textColor,)
    					  		  				],
    					  		  			),
    					  		  		Row(
    					  		  				children: [
    					  		  					CardNumberText(text: '${number.substring(8, 12)}', number: 14, textColor: textColor,),
    					  		  					SizedBox(width: 5),
    					  		  					CardNumberText(text: '${number.substring(12, 16)}', number: 14, textColor: textColor,)
    					  		  				],
    					  		  			),
    					  		  ],
    					  		), 
    					  
    					  		Spacer(),
    					  
    					  		Column(
    					  			crossAxisAlignment: CrossAxisAlignment.end,
    					  		  children: <Widget>[
    					  		    Text(
    					  		    		'Exp',
    					  		    		style: TextStyle(
    					  		    				fontFamily: 'urba',
    					  		    				fontSize: 10, 
    					  		    				color: textColor
    					  		    			),
    					  		    	),
    					  		    Text(
    					  		    		expDate,
    					  		    		style: TextStyle(
    					  		    				fontWeight: FontWeight.w600,
    					  		    				fontFamily: 'pop',
    					  		    				fontSize: 12, 
    					  		    				color: textColor
    					  		    			),
    					  		    	),
    					  		  ],
    					  		)
    					  	],
    					  	),
    					)

    				],
    			),
    	);
  }
}

class CardNumberText extends StatelessWidget {
  
	final String text;
	final double number;
	final Color textColor;

  CardNumberText({
 		
 		required this.text, 
 		required this.number, 
 		required this.textColor


  	});

  @override
  Widget build(BuildContext context) {
    return Text(
    		text, 
    		style: TextStyle(fontFamily: 'urba', fontWeight: FontWeight.w600, fontSize: number, color: textColor),
    	);
}}