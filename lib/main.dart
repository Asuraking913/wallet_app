import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet/color_theme.dart';
import 'package:wallet/components/card_class.dart';
import 'package:wallet/components/text_class.dart';

void main() => runApp(MaterialApp(
    theme: colorClass,
      home: SafeArea(child: Homescreen(),
        ),
  ));

 

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final themeColor = Theme.of(context).colorScheme;


    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: <Widget>[
                Container(
                    height: screenHeight * 0.36,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: themeColor.background,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                      ),
                
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                                children: <Widget>[
                            
                                  CircleAvatar(
                                      backgroundImage: AssetImage('asset/pic.jpg'),
                                      radius: 30,
                                    ),
                            
                                  SizedBox(width: 10,),
                            
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        MyTextField(color: themeColor.tertiary, text: 'Good Morning', fontSize: 12, fontFamily: "urba",),
                                        MyTextField(color: themeColor.secondary, text: 'Hi, Israel shedrack', fontSize: 16, fontFamily: "pop",)
                                      ],
                                    ),//Column
                            
                                  Spacer(),
                            
                                  Icon(
                                      Icons.menu, 
                                      size: 40,
                                      color: themeColor.tertiary,
                                    )
                                ],
                              ),
                          ), //row
                
                
                          Container(
                              height: 1.5,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft, 
                                      end: Alignment.centerRight, 
                                      colors: [
                                        Colors.transparent,
                                        themeColor.secondary,
                                        themeColor.secondary,
                                        Colors.transparent,
                                      ]
                                    ),
                                ),
                            ), 
                          SizedBox(height: 10,),
                          MyTextField(color: themeColor.tertiary, text: 'October Spending', fontSize: 12, fontFamily: 'urba',), 
                          SizedBox(height: 5,),
                
                          Row(
                              children: <Widget>[
                                    MyTextField(color: themeColor.primary, text: '1050.99', fontSize: 30, fontFamily: 'urba',), 
                                    Spacer(),
                                    MyTextField(color: themeColor.tertiary, text: 'See all', fontSize: 16, fontFamily: 'urba',), 
                              ],
                            ),
                          SizedBox(height: 10,),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(8),
                                height: 40,
                                decoration: BoxDecoration(
                                    color: themeColor.secondary,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(15),
                                        right: Radius.circular(15)
                                      )
                                  ),
                
                                child: Center(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          TextButton.icon(
                                              onPressed: (){},
                                              label: Text('Deposit', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                                              icon: Icon(Icons.arrow_upward, color: Colors.black, size: 35,),
                                            ), 
                
                                          Container(
                                            width: 1.5,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft, 
                                                    end: Alignment.centerRight, 
                                                    colors: [
                                                      Colors.transparent,
                                                      themeColor.secondary,
                                                      themeColor.secondary,
                                                      Colors.transparent,
                                                    ]
                                                  ),
                                              ),
                                             ), 
                
                                          TextButton.icon(
                                              onPressed: (){},
                                              label: Text('Withdraw', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                                              icon: Icon(Icons.arrow_downward, color: Colors.black, size: 35,),
                                            )
                                        ],
                                      ),
                                  ),
                              ),
                          )
                        ],
                      ),//column
                  ),
                

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('My Cards', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'pop'
                    ),),
                ), 

                CarouselSlider(
                    options: CarouselOptions(
                      // enlargeCenterPage: true,  // This makes sure that the current card is zoomed in
                      // aspectRatio: 16/9,        // Adjust aspect ratio if needed
                      // viewportFraction: 0.8,   // Adjusts the visible part of adjacent cards
                      // initialPage: 0,
                       ),
                    items: [
                        CardTemplate(
                          expDate: '0/34',
                          cardType: 'visa',
                        ),
                        CardTemplate(
                          expDate: '0/3324',
                          cardType: 'visa',
                        ),
                        CardTemplate(
                          expDate: '0/3234',
                          cardType: 'visa',
                        ),
                    ],
                  ),

              ],
            ),
          )
      );
  }
}