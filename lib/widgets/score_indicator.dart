import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ScoreIndicator extends StatelessWidget {
  const ScoreIndicator({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: AppColors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircularPercentIndicator(
          radius: 20.0,
          lineWidth: 3.5,
          backgroundColor: Colors.transparent,
          circularStrokeCap: CircularStrokeCap.round,
          percent: (movie.vote_average * 10 / 100),
          center: Text(
            "${(movie.vote_average * 10).toString()}%",
            style: AppTextStyles.dmSans.copyWith(
              color: AppColors.white,
              fontSize: 8,
              fontWeight: FontWeight.w700,
            ),
          ),
          progressColor:
              movie.vote_average > 7 ? AppColors.green : AppColors.yellow,
        ),
      ),
    );
  }
}
