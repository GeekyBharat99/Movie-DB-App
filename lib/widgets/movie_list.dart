import 'package:flutter/material.dart';
import 'package:movie_app/api/api_services.dart';
import 'package:movie_app/models/movie_data.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/widgets/movie_card.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    Key? key,
    required this.title,
    required this.category,
    this.id,
  }) : super(key: key);

  final String title;
  final String category;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.pureBlackColor,
            ),
          ),
        ),
        addVerticalSpace(16),
        SizedBox(
          height: 272,
          child: FutureBuilder<MovieData?>(
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
                  } else if (snapshot.hasData &&
                      snapshot.data!.results.isNotEmpty) {
                    MovieData data = snapshot.data!;

                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      separatorBuilder: (context, index) =>
                          addHorizontalSpace(16),
                      itemBuilder: (context, index) => MovieCard(
                        movie: data.results[index],
                      ),
                      itemCount: data.results.length,
                      scrollDirection: Axis.horizontal,
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
            future: id == null
                ? ApiService().getMovies(movieCategory: category)
                : ApiService().getMovieRecommendations(movieId: id!),
          ),
        )
      ],
    );
  }
}
