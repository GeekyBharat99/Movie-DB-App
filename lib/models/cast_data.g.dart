// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CastData _$$_CastDataFromJson(Map<String, dynamic> json) => _$_CastData(
      id: json['id'] as int? ?? 0,
      cast: (json['cast'] as List<dynamic>?)
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CastDataToJson(_$_CastData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
