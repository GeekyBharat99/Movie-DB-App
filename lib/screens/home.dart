import 'package:flutter/material.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/widgets/movie_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TMDB",
          style: AppTextStyles.dmSans.copyWith(
            color: AppColors.white,
            fontSize: 22,
            letterSpacing: 5,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          addVerticalSpace(16),
          const MovieList(
            title: "Popular Movies",
            category: "popular",
          ),
          addVerticalSpace(16),
          const MovieList(
            title: "Top Rated Movies",
            category: "top_rated",
          ),
          addVerticalSpace(16),
          const MovieList(
            title: "Upcoming Movies",
            category: "upcoming",
          ),
          addVerticalSpace(16),
        ],
      ),
    );
  }
}
