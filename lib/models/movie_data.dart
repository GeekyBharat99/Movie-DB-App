// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/movie.dart';

part 'movie_data.freezed.dart';
part 'movie_data.g.dart';

@freezed
class MovieData with _$MovieData {
  const factory MovieData({
    @Default(0) int page,
    @Default([]) List<Movie> results,
    @Default(0) int total_pages,
    @Default(0) int total_results,
  }) = _MovieData;

  factory MovieData.fromJson(Map<String, dynamic> json) =>
      _$MovieDataFromJson(json);
}
