import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import '../../models/movie.dart';
import '../../providers.dart';

class DetailedPage extends StatefulWidget {
  static Route create(Movie movie) {
    return MaterialPageRoute(builder: (_) => DetailedPage(movie: movie));
  }

  DetailedPage({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: BackdropPersistentHeaderDelegate(
                        imageUrl:
                            '${context.read(movieImageBaseUrl)}${widget.movie.details.backdropPath}',
                        maxExtent: constraints.maxHeight * 0.4,
                        minExtent: constraints.maxHeight * 0.10,
                        title: widget.movie.details.originalTitle,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Column(
                          children: [
                            Text(
                              widget.movie.details.overview,
                              style: textTheme.subtitle1.copyWith(
                                  color: kSecondaryTextColor, height: 1.8),
                            ),
                            SizedBox(height: kDefaultPadding),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Chip(
                                  backgroundColor: Colors.black54,
                                  avatar: Icon(
                                    Icons.timelapse,
                                    color: Colors.blue,
                                  ),
                                  label: Text(
                                    '${DateTime(0, 0, 0, 0, widget.movie.details.runtime).hour.toString()} Hour ${DateTime(0, 0, 0, 0, widget.movie.details.runtime).minute.toString()} min',
                                    style: textTheme.subtitle1
                                        .copyWith(color: kPrimaryTextColor),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Colors.black54,
                                  avatar: Icon(
                                    Icons.category,
                                    color: Colors.blue,
                                  ),
                                  label: Text(
                                    widget.movie.details.genres[0].name,
                                    style: textTheme.subtitle1
                                        .copyWith(color: kPrimaryTextColor),
                                  ),
                                ),
                                Chip(
                                  backgroundColor: Colors.black54,
                                  avatar: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                  label: Text(
                                    '${widget.movie.details.voteAverage}/10',
                                    style: textTheme.subtitle1
                                        .copyWith(color: kPrimaryTextColor),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, index) {
                          return ListTile(
                            title: Text(
                              widget.movie.credits.cast[index].originalName,
                              style: textTheme.headline6
                                  .copyWith(color: kPrimaryTextColor),
                            ),
                            subtitle: Text(
                              widget.movie.credits.cast[index].character,
                              style: textTheme.subtitle1
                                  .copyWith(color: kSecondaryTextColor),
                            ),
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: widget.movie.credits.cast[index]
                                          .profilePath !=
                                      null
                                  ? CachedNetworkImage(
                                      placeholder: (_, url) {
                                        return Shimmer.fromColors(
                                          child: Container(color: Colors.white),
                                          baseColor: Colors.grey[300],
                                          highlightColor: Colors.grey[100],
                                          direction: ShimmerDirection.ltr,
                                        );
                                      },
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          '${context.read(movieImageBaseUrl)}${widget.movie.credits.cast[index].profilePath}')
                                  : null,
                            ),
                          );
                        },
                        childCount: widget.movie.credits.cast.length,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: kDefaultPadding + 30)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Tickets',
                        style: textTheme.headline5.copyWith(
                            color: kPrimaryTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class BackdropPersistentHeaderDelegate
    implements SliverPersistentHeaderDelegate {
  BackdropPersistentHeaderDelegate({
    this.minExtent = 0,
    @required this.maxExtent,
    @required this.title,
    @required this.imageUrl,
  });

  final double minExtent;
  final double maxExtent;
  final String title;
  final String imageUrl;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ShaderMask(
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
          child: CachedNetworkImage(
            placeholder: (_, urk) {
              return Shimmer.fromColors(
                child: Container(color: Colors.white),
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                direction: ShimmerDirection.ltr,
              );
            },
            imageUrl: imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kPrimaryTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        )
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  TickerProvider get vsync => null;
}
