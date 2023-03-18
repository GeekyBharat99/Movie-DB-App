import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/cast.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/constants.dart';
import 'package:movie_app/utils/helper_widgets.dart';
import 'package:movie_app/utils/text_styles.dart';

class CastCard extends StatelessWidget {
  const CastCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Cast data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
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
                height: 135,
                width: 120,
                imageUrl: imageBaseURLCast + data.profile_path,
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
                  height: 135,
                  width: 120,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          addVerticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              data.original_name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.dmSans.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.pureBlackColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              data.character,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.dmSans.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
