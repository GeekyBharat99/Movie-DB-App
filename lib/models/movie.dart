// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @Default(false) bool adult,
    @Default(false) bool video,
    @Default('') String backdrop_path,
    @Default([]) List<int> genre_ids,
    @Default(0) int id,
    @Default(0) int vote_count,
    @Default('') String original_language,
    @Default('') String original_title,
    @Default('') String overview,
    @Default(0.0) double popularity,
    @Default('') String poster_path,
    @Default('') String release_date,
    @Default('') String title,
    @Default(0.0) double vote_average,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
