class MovieListModel {
  final int id;
  final String title;
  final String posterPath;
  final DateTime releaseDate;
  final num voteAverage;
  final int voteCount;

  MovieListModel(
      {required this.id,
      required this.title,
      required this.posterPath,
      required this.releaseDate,
      required this.voteAverage,
      required this.voteCount});

  factory MovieListModel.fromJson(Map<String, dynamic> json) => MovieListModel(
        id: json['id'],
        title: json['title'],
        posterPath: 'https://image.tmdb.org/t/p/w500' + json['poster_path'],
        releaseDate: DateTime.parse(json['release_date']),
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
