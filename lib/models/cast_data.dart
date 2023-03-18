// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/cast.dart';

part 'cast_data.freezed.dart';
part 'cast_data.g.dart';

@freezed
class CastData with _$CastData {
  const factory CastData({
    @Default(0) int id,
    @Default([]) List<Cast> cast,
  }) = _CastData;

  factory CastData.fromJson(Map<String, dynamic> json) =>
      _$CastDataFromJson(json);
}
