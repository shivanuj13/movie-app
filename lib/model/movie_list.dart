Map <String,dynamic> map = {
  'data' : [
    {
      'movieName' : 'Spider man : far from home',
      'posterUrl' : 'https://upload.wikimedia.org/wikipedia/en/b/bd/Spider-Man_Far_From_Home_poster.jpg',
      'rating' : 7.4,
      'runTime' : 130
    },

    {
      'movieName' : 'Avengers : Endgame',
      'posterUrl' : 'https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg',
      'rating' : 7.6,
      'runTime' : 150
    },

    {
      'movieName' : 'Bahubali',
      'posterUrl' : 'https://upload.wikimedia.org/wikipedia/en/f/f9/Baahubali_the_Conclusion.jpg',
      'rating' : 8.1,
      'runTime' : 160
    },

    {
      'movieName' : 'phir hera pheri',
      'posterUrl' : 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3a/Still-phir-hera-phir.jpg/220px-Still-phir-hera-phir.jpg',
      'rating' : 9.8,
      'runTime' : 180
    },
  ]
};

class ListofMovies {
  List<MovieData>? listMovieData;

  ListofMovies({this.listMovieData});

  factory ListofMovies.fromMap(Map <String,dynamic> map) {
    return ListofMovies(
      listMovieData : List<MovieData>.from(map['data'].map((x)=>MovieData.fromMap(x))),
    );
  }
}



class MovieData {
  String? movieName;
  String? posterUrl;
  double? rating;
  int? runTime;

  MovieData({this.movieName,this.posterUrl,this.rating,this.runTime});

  factory MovieData.fromMap(Map <String,dynamic> map) {
    return MovieData(
      movieName: map['movieName'],
      posterUrl: map['posterUrl'],
      rating: map['rating'],
      runTime: map['runTime']
    );
  }
}

