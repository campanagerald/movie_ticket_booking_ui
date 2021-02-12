import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../models/movie.dart';
import 'movie_list_item.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    Key key,
    @required this.movies,
  }) : super(key: key);

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      itemCount: movies.length,
      crossAxisSpacing: 10,
      mainAxisSpacing: 15,
      crossAxisCount: 2,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieListItem(movie: movie);
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(1, index.isEven ? 2 : 1);
      },
    );
  }
}
