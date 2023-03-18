// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    @Default(false) bool adult,
    @Default(0) int gender,
    @Default(0) int id,
    @Default(0) int order,
    @Default('') String known_for_department,
    @Default('') String name,
    @Default('') String original_name,
    @Default(0.0) double popularity,
    @Default('') String profile_path,
    @Default(0) int cast_id,
    @Default('') String character,
    @Default('') String credit_id,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
