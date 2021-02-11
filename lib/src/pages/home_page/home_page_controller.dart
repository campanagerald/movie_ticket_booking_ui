import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/movie.dart';
import '../../repository/movie_repository.dart';

abstract class MovieState {
  const MovieState();
}

class MovieInitial implements MovieState {
  const MovieInitial();
}

class MovieLoading implements MovieState {
  const MovieLoading();
}

class MovieLoaded implements MovieState {
  final List<Movie> movies;

  const MovieLoaded(this.movies);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MovieLoaded && o.movies == movies;
  }

  @override
  int get hashCode => movies.hashCode;
}

class MovieError implements MovieState {
  final String message;

  const MovieError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MovieError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class MoviePageController extends StateNotifier<MovieState> {
  final MovieRepository _movieRepository;

  MoviePageController(this._movieRepository) : super(MovieInitial());

  getMovies() async {
    state = MovieLoading();
    final movies = await _movieRepository.getMovies();
    state = MovieLoaded(movies);
  }
}
