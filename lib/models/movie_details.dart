// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/belongs_to_collection.dart';
import 'package:movie_app/models/company.dart';
import 'package:movie_app/models/country.dart';
import 'package:movie_app/models/genre.dart';
import 'package:movie_app/models/language.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    @Default(false) bool adult,
    @Default(false) bool video,
    @Default('') String backdrop_path,
    BelongsToCollection? belongs_to_collection,
    @Default(0) int budget,
    @Default([]) List<Genre> genres,
    @Default('') String homepage,
    @Default(0) int id,
    @Default('') String imdb_id,
    @Default('') String original_language,
    @Default('') String original_title,
    @Default('') String overview,
    @Default(0.0) double popularity,
    @Default(0.0) double vote_average,
    @Default('') String poster_path,
    @Default([]) List<Company> production_companies,
    @Default([]) List<Country> production_countries,
    @Default('') String release_date,
    @Default(0) int revenue,
    @Default(0) int runtime,
    @Default(0) int vote_count,
    @Default([]) List<Language> spoken_languages,
    @Default('') String status,
    @Default('') String tagline,
    @Default('') String title,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
