class MovieModel {
  // final bool adult;
  // final List genreIds;
  // final String originalLanguage;
  // final String originalTitle;
  // final double popularity;
  // final bool video;
  final int id;
  final String backdropPath;
  final String overview;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  final num voteAverage;
  final int voteCount;

  MovieModel({
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        backdropPath: 'https://image.tmdb.org/t/p/w500' + json['backdrop_path'],
        overview: json['overview'],
        posterPath: 'https://image.tmdb.org/t/p/w500' + json['poster_path'],
        releaseDate: DateTime.parse(json['release_date']),
        title: json['title'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
