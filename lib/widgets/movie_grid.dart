

import 'package:assin/page/movie_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({Key? key, this.movieName, this.posterUrl, this.rating, this.runTime}) : super(key: key);
 final String? movieName;
 final String? posterUrl;
 final  double? rating;
 final  int? runTime;
  @override
  _MovieGridState createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20
                  ),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MovieDisc()));
                    },
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.network(
                                widget.posterUrl!,
                                height: 270,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fitWidth,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black54,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'Assets/Star 1.svg',
                                        color: Colors.white,
                                      ),
                                     const SizedBox(
                                        width: 10,
                                      ),
                                      Text('${widget.rating!}/10',
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 18))
                                    ],
                                  ),
                        
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children : [
                             Text(widget.movieName!,
                                    style: const TextStyle(
                                                color: Colors.white, fontSize: 28, fontWeight: FontWeight.normal)),
                        
                            Row(
                            children: [
                              Image.asset('Assets/Group 356.png', height: 20,),
                              const SizedBox(width: 10,),
                               Text('${widget.runTime!~/60} hours ${widget.runTime! % 60} min',
                                    style: const TextStyle(
                                                color: Color(0xfff79e44), fontWeight: FontWeight.normal)),
                        
                            ],)
                            ]),
                        )
                      ],
                    ),
                  ),
                );
  }
}