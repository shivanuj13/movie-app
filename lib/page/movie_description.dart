import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MovieDisc extends StatefulWidget {
  const MovieDisc({Key? key}) : super(key: key);

  @override
  _MovieDiscState createState() => _MovieDiscState();
}

class _MovieDiscState extends State<MovieDisc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('Assets/av.png'),
            Container(
             
             decoration: const BoxDecoration(
               gradient: LinearGradient(colors: [Colors.black12,Color(0xFF210F37)],
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter
               ,stops: [0.3,0.5]),
             ),
             child: Padding(
               padding: const EdgeInsets.only(top: 30,left: 20,right: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [ 
                   ClipRRect(
                     child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                         color: Colors.white24,
                         borderRadius: BorderRadius.circular(20),
                         
                        ),
                        child: Image.asset(
                                     'Assets/eva_arrow-ios-back-fill.png',
                                     height: 40,
                                     width: 40,
                                     fit: BoxFit.fitWidth,
                   ),
                      ),
                     ),
                     const Padding(
                       padding: EdgeInsets.only(top: 200,left: 20),
                       child: Text('Avengers: Endgame',style: TextStyle(letterSpacing: 4,fontSize: 40,color: Colors.white),),
                     ),

                     const Padding(
                       padding: EdgeInsets.only(top: 20,left: 20),
                       child: Text('Action, Adventure, Drama',style: TextStyle(fontSize: 24,color: Colors.white60),),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             height: 60,
                             width: 60,
                            padding: const EdgeInsets.all(18),
                             decoration: BoxDecoration(
                               color: const Color(0xFF3E1752),
                               borderRadius: BorderRadius.circular(20)
                             ),
                             child: ClipRRect(
                               child: Image.asset('Assets/Vector 27.png'),
                             ),
                           ),
                           Container(
                             height: 60,
                             width: 60,
                            padding: const EdgeInsets.all(18),
                             decoration: BoxDecoration(
                               color: const Color(0xFF3E1752),
                               borderRadius: BorderRadius.circular(20)
                             ),
                             child: ClipRRect(
                               child: Image.asset('Assets/Path-1.png'),
                             ),
                           ),
                           Container(
                             height: 60,
                             width: 60,
                            padding: const EdgeInsets.all(18),
                             decoration: BoxDecoration(
                               color: const Color(0xFF3E1752),
                               borderRadius: BorderRadius.circular(20)
                             ),
                             child: ClipRRect(
                               child: Image.asset('Assets/Path.png'),
                             ),
                           )
                         ],
                       ),
                     ),

                     Container(
                       margin: const EdgeInsets.only(top: 30,bottom: 10,right:10),
                       padding: const EdgeInsets.all(20),
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: const Color(0xFF3E1752),
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   for (var i = 0; i < 4; i++)
                                   Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                     child: Image.asset('Assets/Star 1.png',height: 20,),
                               ),
                                
                               ],
                               ),
                               const Text('8.4',style: TextStyle(color: Colors.amber,fontSize: 24,fontWeight: FontWeight.bold),)
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 10.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: const [
                                 Flexible(child: Text('Internet Movie Database',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2,))),
                                 Text('8.4/10',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2))
                             
                               ],
                             ),
                           ),
                           
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: const [
                                 Flexible(child: Text('Rotten Tomatoes',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2,))),
                                 Text('94%',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2))
                           
                               ],
                           ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: const [
                                 Flexible(child: Text('Metacritic',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2,))),
                                 Text('78/100',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2))
                           
                               ],
                           ),
                            ),
                         ],
                       ),
                     ),

                      Container(
                       margin: const EdgeInsets.only(top: 10,bottom: 10,right:10),
                       padding: const EdgeInsets.all(20),
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: const Color(0xFF3E1752),
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Image.asset('Assets/Group 357.png',height:20),
                               const SizedBox(width: 20,),
                               const Text('2019',style: TextStyle(color: Colors.white,fontSize: 20,))
                             ]
                           ),
                           const SizedBox(height: 10,),

                           Row(
                             children: [
                               Image.asset('Assets/Group 357.png',height:20),
                               const SizedBox(width: 20,),
                               const Text('2019',style: TextStyle(color: Colors.white,fontSize: 20,))
                             ]
                           ),
                           const SizedBox(height: 10,),

                           Row(
                             children: [
                               Image.asset('Assets/Group 357.png',height:20),
                               const SizedBox(width: 20,),
                               const Text('2019',style: TextStyle(color: Colors.white,fontSize: 20,))
                             ]
                           ),
                           const SizedBox(height: 10,),
                         ],
                       ),
                     ),

                      Container(
                       margin: const EdgeInsets.only(top: 10,bottom: 30,right:10),
                       padding: const EdgeInsets.all(20),
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: const Color(0xFF3E1752),
                         borderRadius: BorderRadius.circular(20)
                       ),
                       
                     )
                    
                     ],
               ),
             ),
            )
          ],
        ),
      ),
    );
  }
}