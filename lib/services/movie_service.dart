import 'package:dio/dio.dart';
import 'package:flutter_nonton/models/movie_model.dart';

class MovieService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'ab3a67a225bfc7da852014189004fcb5';
  final dio = Dio();

  Future<List<MovieModel>> getPlayingNowMovies() async {
    try {
      final res = await dio.get('$baseUrl/3/movie/now_playing?api_key=$apiKey');
      final data = res.data['results'] as List;
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
