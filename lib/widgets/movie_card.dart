import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_details.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/constants.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/widgets/score_indicator.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        MovieDetailsPage.route,
        arguments: movie,
      ),
      child: SizedBox(
        width: 124,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.zero,
                  borderOnForeground: true,
                  clipBehavior: Clip.antiAlias,
                  child: Center(
                    child: CachedNetworkImage(
                      height: 188,
                      width: 124,
                      imageUrl: imageBaseURLSmall + movie.poster_path,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Image.asset(
                        "assets/cupertino_activity_indicator.gif",
                        height: 188,
                        width: 124,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                addVerticalSpace(22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    movie.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pureBlackColor,
                    ),
                  ),
                ),
                addVerticalSpace(4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    movie.release_date,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 62,
              left: 8,
              child: ScoreIndicator(movie: movie),
            )
          ],
        ),
      ),
    );
  }
}
