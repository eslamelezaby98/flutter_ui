class MoviesPreview {
  String movieCover;
  MoviesPreview({this.movieCover});
  static List<MoviesPreview> moviePreviewList = [
    MoviesPreview(movieCover: 'assets/preview/1.png'),
    MoviesPreview(movieCover: 'assets/preview/2.png'),
    MoviesPreview(movieCover: 'assets/preview/3.jpg'),
    MoviesPreview(movieCover: 'assets/preview/4.jpg'),
    MoviesPreview(movieCover: 'assets/preview/5.jpg'),
  ];
}

class MoviesPopular {
  String movieCover;
  MoviesPopular({this.movieCover});

  static List<MoviesPopular> moviePopularList = [
    MoviesPopular(movieCover: 'assets/popular/1.jpg'),
    MoviesPopular(movieCover: 'assets/popular/2.jpg'),
    MoviesPopular(movieCover: 'assets/popular/3.png'),
    MoviesPopular(movieCover: 'assets/popular/4.jpg'),
    MoviesPopular(movieCover: 'assets/popular/5.png'),
  ];
}

class MoviesTrending {
  String movieCover;
  MoviesTrending({this.movieCover});

  static List<MoviesTrending> moviesTrendList = [
    MoviesTrending(movieCover: 'assets/popular/5.png'),
    MoviesTrending(movieCover: 'assets/popular/3.png'),
    MoviesTrending(movieCover: 'assets/popular/2.jpg'),
    MoviesTrending(movieCover: 'assets/popular/4.jpg'),
    MoviesTrending(movieCover: 'assets/popular/1.jpg'),
  ];
}
