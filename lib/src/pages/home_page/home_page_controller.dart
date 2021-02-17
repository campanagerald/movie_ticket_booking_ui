import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/movie.dart';
import '../../repository/movie_repository.dart';

part 'home_page_controller.freezed.dart';

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.loading() = _Loading;
  const factory MovieState.loaded(List<Movie> movies) = _Loaded;
  const factory MovieState.error(String message) = _Error;
}

class MoviePageController extends StateNotifier<MovieState> {
  final MovieRepository _movieRepository;

  MoviePageController(this._movieRepository) : super(MovieState.initial());

  getMovies() async {
    try {
      state = MovieState.loading();
      final movies = await _movieRepository.getMovies();
      state = MovieState.loaded(movies);
    } catch (e) {
      state = MovieState.error('Something went wrong');
    }
  }
}
