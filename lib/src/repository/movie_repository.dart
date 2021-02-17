import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/credits.dart';
import '../models/details.dart';
import '../models/movie.dart';
import '../providers.dart';

class MovieRepository {
  Reader _read;
  String _apiKey;
  Dio _dio;

  MovieRepository(Reader read) {
    _read = read;
    _dio = _read(dioProvider);
    _apiKey = _read(apiKeyProvider);
  }

  Future<List<Movie>> getMovies() async {
    try {
      final response = await _dio.get('/movie/popular?api_key=$_apiKey');

      if (response.statusCode == 200) {
        final moviesIds =
            (response.data["results"] as List<dynamic>).map((e) => e['id']);

        final movies = await Future.wait(
          moviesIds.map((id) async {
            final results =
                await Future.wait([getMovieDetails(id), getMovieCredits(id)]);

            return Movie(id: id, details: results[0], credits: results[1]);
          }),
        );

        return List<Movie>.from(movies);
      } else {
        throw Exception('Failed fetching movies');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Details> getMovieDetails(int id) async {
    try {
      final response = await _dio.get('/movie/$id?api_key=$_apiKey');
      return Details.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<Credits> getMovieCredits(int id) async {
    try {
      final response = await _dio.get('/movie/$id/credits?api_key=$_apiKey');
      return Credits.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
