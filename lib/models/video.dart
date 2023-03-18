// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    @Default('') String iso_639_1,
    @Default('') String iso_3166_1,
    @Default('') String name,
    @Default('') String key,
    @Default('') String site,
    @Default(0) int size,
    @Default('') String type,
    @Default(false) bool official,
    @Default('') String published_at,
    @Default('') String id,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
