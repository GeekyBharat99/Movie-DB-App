import 'package:flutter/material.dart';
import 'package:movie_app/api/api_services.dart';
import 'package:movie_app/models/cast_data.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/widgets/cast_card.dart';

class CastList extends StatelessWidget {
  const CastList({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Cast",
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.pureBlackColor,
            ),
          ),
        ),
        addVerticalSpace(16),
        SizedBox(
          height: 220,
          child: FutureBuilder<CastData?>(
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
                        style: AppTextStyles.dmSans.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.pureBlackColor,
                        ),
                      ),
                    );
                  } else if (snapshot.hasData &&
                      snapshot.data!.cast.isNotEmpty) {
                    CastData data = snapshot.data!;

                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      separatorBuilder: (context, index) =>
                          addHorizontalSpace(16),
                      itemBuilder: (context, index) => CastCard(
                        data: data.cast[index],
                      ),
                      itemCount: data.cast.length,
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
            future: ApiService().getMovieCast(movieId: movieId),
          ),
        )
      ],
    );
  }
}
