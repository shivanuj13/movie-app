import 'package:assin/model/movie_list.dart';
import 'package:assin/widgets/movie_grid.dart';
import 'package:assin/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MyPage1(),
    );
  }
}

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  _MyPage1State createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  ListofMovies? movieList= ListofMovies.fromMap(map);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17082a),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('Assets/bg bloop.png'),
            Column(
              children: [
                const SearchBar(),
                for (MovieData movie in movieList!.listMovieData!)
                  MovieGrid(movieName: movie.movieName,posterUrl: movie.posterUrl,rating: movie.rating,runTime: movie.runTime,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
