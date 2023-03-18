import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/constants.dart';

class MovieDetailsPagePoster extends StatelessWidget {
  const MovieDetailsPagePoster({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          height: 180,
          width: MediaQuery.of(context).size.width,
          imageUrl: imageBaseURLBigBanner + movie.backdrop_path,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/cupertino_activity_indicator.gif",
              height: 220,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.blue.withOpacity(0.7),
              AppColors.pureBlackColor.withOpacity(0.4),
              Colors.transparent,
            ]),
          ),
        ),
        Positioned(
          bottom: 22,
          left: 16,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.zero,
            borderOnForeground: true,
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(
              height: 135,
              width: 90,
              imageUrl: imageBaseURLSmall + movie.poster_path,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/cupertino_activity_indicator.gif",
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ],
    );
  }
}
