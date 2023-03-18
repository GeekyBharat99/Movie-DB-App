// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoData _$$_VideoDataFromJson(Map<String, dynamic> json) => _$_VideoData(
      id: json['id'] as int? ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VideoDataToJson(_$_VideoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
