import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'repository/movie_repository.dart';
import 'pages/home_page/home_page_controller.dart';

// I hot this api key from https://github.com/sagarprince/flutter_movies_app/blob/master/lib/app/resources/api_provider.dart
// It should not be hard coded
final apiKeyProvider = Provider((ref) => '2ffe2cefa3ecef9f33e2603f6f63936d');
final movieImageBaseUrl =
    Provider((ref) => 'https://image.tmdb.org/t/p/original');

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: 'http://api.themoviedb.org/3'),
  ),
);

final movieRepositoryProvider = Provider((ref) => MovieRepository(ref.read));

final moviePageControllerProvider =
    StateNotifierProvider.autoDispose<MoviePageController>(
        (ref) => MoviePageController(ref.watch(movieRepositoryProvider)));
