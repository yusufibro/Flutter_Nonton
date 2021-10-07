import 'package:dio/dio.dart';
import 'package:flutter_nonton/models/movie_list_model.dart';

class MovieListService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'ab3a67a225bfc7da852014189004fcb5';

  Future<List<MovieListModel>> getRecommendationMovies() async {
    try {
      final res =
          await Dio().get('$baseUrl/3/movie/now_playing?api_key=$apiKey');
      final data = res.data['results'] as List;
      final moviesList = data.map((e) => MovieListModel.fromJson(e)).toList();
      print(moviesList);
      return moviesList;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
