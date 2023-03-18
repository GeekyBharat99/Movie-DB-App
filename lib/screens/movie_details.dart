import 'package:flutter/material.dart';
import 'package:movie_app/api/api_services.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/movie_details.dart';
import 'package:movie_app/models/video_data.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/widgets/cast_list.dart';
import 'package:movie_app/widgets/movie_details_page_poster.dart';
import 'package:movie_app/widgets/movie_list.dart';
import 'package:movie_app/widgets/score_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailsPage extends StatelessWidget {
  static const String route = 'movie_details';
  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  String getTimeString(int value) {
    final int hour = value ~/ 60;
    final int minutes = value % 60;
    return '${hour.toString().padLeft(2, "0")}h ${minutes.toString().padLeft(2, "0")}m';
  }

  openYoutube() async {
    customToast(text: "Loading...", isLong: true);
    VideoData? videos = await ApiService().getMovieTrailer(movieId: movie.id);
    String youtubeKey =
        videos!.results.lastWhere((element) => element.type == "Trailer").key;
    var url = Uri.parse("https://www.youtube.com/watch?v=$youtubeKey");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      customToast(text: "Could not launch youtube", isLong: true);
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Details",
          style: AppTextStyles.dmSans.copyWith(
            color: AppColors.white,
            fontSize: 22,
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
      ),
      body: FutureBuilder<MovieDetails?>(
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Something Went Wrong!",
                    textScaleFactor: 1,
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pureBlackColor,
                    ),
                  ),
                );
              } else if (snapshot.hasData) {
                MovieDetails data = snapshot.data!;

                return ListView(
                  children: [
                    MovieDetailsPagePoster(movie: movie),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          addVerticalSpace(12),
                          Text(
                            "${movie.title} (${DateTime.parse(movie.release_date).year})",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.dmSans.copyWith(
                              color: AppColors.pureBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          addVerticalSpace(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ScoreIndicator(movie: movie),
                                  addHorizontalSpace(8),
                                  Text(
                                    "User Score",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.dmSans.copyWith(
                                      color: AppColors.pureBlackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  openYoutube();
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.orange,
                                ),
                                icon: const Icon(
                                  Icons.play_arrow_rounded,
                                  color: AppColors.white,
                                ),
                                label: Text(
                                  "Play Trailer",
                                  style: AppTextStyles.dmSans.copyWith(
                                    fontSize: 16,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          addVerticalSpace(16),
                          Text(
                            movie.release_date,
                            style: AppTextStyles.dmSans.copyWith(
                              color: AppColors.pureBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            getTimeString(data.runtime),
                            style: AppTextStyles.dmSans.copyWith(
                              color: AppColors.pureBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            data.genres.map((e) => e.name).toList().join(", "),
                            style: AppTextStyles.dmSans.copyWith(
                              color: AppColors.pureBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          addVerticalSpace(12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Overview",
                              style: AppTextStyles.dmSans.copyWith(
                                color: AppColors.pureBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          addVerticalSpace(4),
                          Text(
                            movie.overview,
                            style: AppTextStyles.dmSans.copyWith(
                              color: AppColors.pureBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(24),
                    CastList(movieId: movie.id),
                    addVerticalSpace(24),
                    MovieList(
                      title: "Recommendations",
                      category: "",
                      id: movie.id,
                    ),
                    addVerticalSpace(24),
                  ],
                );
              } else {
                return Center(
                  child: Text(
                    "No Data Found",
                    style: AppTextStyles.dmSans.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.pureBlackColor,
                    ),
                  ),
                );
              }
          }
        },
        future: ApiService().getMovieDetails(movieId: movie.id),
      ),
    );
  }
}
