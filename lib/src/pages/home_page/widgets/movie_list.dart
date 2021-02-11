import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_ticket_booking_ui/src/pages/detailed_page/detailed_page.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import '../../../providers.dart';

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
        return GestureDetector(
          onTap: () =>
              Navigator.of(context).push(DetailedPage.create(movies[index])),
          child: Stack(
            children: [
              Positioned.fill(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white,
                        Colors.black.withOpacity(1),
                      ],
                    ).createShader(bounds);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl:
                          '${context.read(movieImageBaseUrl)}${movies[index].details.posterPath}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    movies[index].details.originalTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kPrimaryTextColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(1, index.isEven ? 2 : 1);
      },
    );
  }
}
