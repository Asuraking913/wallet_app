import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet/color_theme.dart';
import 'package:wallet/components/card_class.dart';
import 'package:wallet/components/text_class.dart';
import 'dart:math' as math;
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
          bottomNavigationBar: ConvexAppBar(
        // style: TabStyle.react,
        backgroundColor: Colors.white,
        items: [
          TabItem(icon: Icon(Icons.home, color: Colors.grey, size: 30,),),
          TabItem(icon: Icon(Icons.payment, color: Colors.grey, size: 30,)),
          TabItem(icon: Icon(Icons.design_services, color: Colors.grey, size: 30,)),
          TabItem(icon: Icon(Icons.chat, color: Colors.grey, size: 30,)),
          // TabItem(icon: Icon(Icons.more, color: Colors.grey, size: 30,)),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: <Widget>[
                Container(
                    height: screenHeight * 0.38,
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
                                    // MyTextField(color: themeColor.primary, text: '1050.99', fontSize: 30, fontFamily: 'urba',), 
                                    Icon(Icons.attach_money, color: themeColor.primary, size: 30),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical:20),
                  child: Text('My Cards', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'pop'
                    ),),
                ), 

                CarouselSlider(
                    options: CarouselOptions(
                    height: 200, 
                       ),
                    items: [
                        
                        CardTemplate(
                          expDate: '0/26',
                          cardType: 'master',
                          topColorType: Colors.green[100]!,
                          textColor: themeColor.background,
                          bottomColorType: Colors.grey[200]!,
                        ),

                        CardTemplate(
                          expDate: '0/24',
                          cardType: 'master',
                          topColorType: Colors.green[100]!,
                          textColor: themeColor.background,
                          bottomColorType: Colors.grey[200]!,
                        ),
                        CardTemplate(
                          expDate: '0/25',
                          cardType: 'visa',
                          topColorType: themeColor.primary,
                          textColor: themeColor.secondary,
                          bottomColorType: themeColor.background,
                        ),
                      ]
                  ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text('Top Offers', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'pop'
                    ),),
                ), 

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Transform.rotate(
                            angle: math.pi / 6,
                            child: Image.asset('asset/discount.png', width: 70, height: 70,), 
                          ), 

                        SizedBox(width: 8,),

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '20%-40% Off', 
                                  style:  TextStyle(
                                  color: themeColor.background, 
                                  fontFamily: 'urba', fontWeight: 
                                  FontWeight.w600
                                  ),
                                ),
                              Text('Flat Discount on Every Purchase', style: TextStyle(fontSize:  11, fontFamily: 'pop') ,),
                            ],
                          ), 
                        Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green[100], 
                            borderRadius: BorderRadius.all(
                                Radius.circular(8)
                              )
                          ),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('Food', style: TextStyle(
                          fontSize:  11, 
                          fontFamily: 'pop', 
                          color: themeColor.secondary,
                          ) ,),
                      ),
                      ],
                    ),
                )

              ],
            ),
          )
      );
  }
}