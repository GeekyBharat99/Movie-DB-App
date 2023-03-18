// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/video.dart';

part 'video_data.freezed.dart';
part 'video_data.g.dart';

@freezed
class VideoData with _$VideoData {
  const factory VideoData({
    @Default(0) int id,
    @Default([]) List<Video> results,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, dynamic> json) =>
      _$VideoDataFromJson(json);
}
