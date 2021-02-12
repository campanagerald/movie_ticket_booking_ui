import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import '../../../providers.dart';
import '../../detailed_page/detailed_page.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
        transitionDuration: Duration(seconds: 1),
        transitionType: ContainerTransitionType.fadeThrough,
        closedColor: Colors.black,
        closedBuilder: (_, action) {
          return Stack(
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
                      placeholder: (_, url) {
                        return Shimmer.fromColors(
                          child: Container(color: Colors.white),
                          baseColor: Colors.grey[300],
                          highlightColor: Colors.grey[100],
                          direction: ShimmerDirection.ltr,
                        );
                      },
                      imageUrl:
                          '${context.read(movieImageBaseUrl)}${movie.details.posterPath}',
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
                    movie.details.originalTitle,
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
          );
        },
        openBuilder: (_, action) {
          return DetailedPage(movie: movie);
        });
  }
}
