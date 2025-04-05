import 'package:flutter/material.dart';
import 'package:wallet/components/text_class.dart';

class CardTemplate extends StatelessWidget {
  
	final String number = '2345028374562834';
	final String expDate;
	final String cardType;

	CardTemplate({
	 required this.expDate, 
	 required this.cardType 
	 });


  @override
  Widget build(BuildContext context) {
    return Container(
    		padding: EdgeInsets.all(10),

    		child: Column(
    				children: <Widget>[

    					Container(
    						padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
    						decoration: BoxDecoration(
    								color: Colors.green[300],
    								borderRadius: BorderRadius.only(
    										topLeft: Radius.circular(15),
    										topRight: Radius.circular(15)
    									)
    							),
    					  child: Row(
    					  	children: <Widget>[
    					  		Icon(
    					  				Icons.wifi,
    					  				color: Colors.white,
    					  			), 
    					  
    					  		Spacer(),
    					  
    					  		Image(
    					  				image: AssetImage('asset/visa.png'),
    					  				width: 80,
    					  				height: 80,
    					  			)
    					  	],
    					  	),
    					), 
    					Container(
    						padding: EdgeInsets.fromLTRB(20, 30, 10, 20),
    						decoration: BoxDecoration(
    								color: Colors.black,
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
    					  		  					CardNumberText(text: '${number.substring(0, 4)}', number: 14,),
    					  		  					SizedBox(width: 5),
    					  		  					CardNumberText(text: '${number.substring(4, 8)}', number: 14,)
    					  		  				],
    					  		  			),
    					  		  		Row(
    					  		  				children: [
    					  		  					CardNumberText(text: '${number.substring(8, 12)}', number: 16,),
    					  		  					SizedBox(width: 5),
    					  		  					CardNumberText(text: '${number.substring(12, 16)}', number: 16,)
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
    					  		    				fontSize: 12, 
    					  		    				color: Colors.white
    					  		    			),
    					  		    	),
    					  		    Text(
    					  		    		'0/34',
    					  		    		style: TextStyle(
    					  		    				fontWeight: FontWeight.bold,
    					  		    				fontFamily: 'pop',
    					  		    				fontSize: 14, 
    					  		    				color: Colors.white
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

  CardNumberText({
 		
 		required this.text, 
 		required this.number

  	});

  @override
  Widget build(BuildContext context) {
    return Text(
    		text, 
    		style: TextStyle(fontFamily: 'urba', fontWeight: FontWeight.bold, fontSize: number, color: Colors.white),
    	);
}}