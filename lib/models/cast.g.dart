// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      adult: json['adult'] as bool? ?? false,
      gender: json['gender'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      order: json['order'] as int? ?? 0,
      known_for_department: json['known_for_department'] as String? ?? '',
      name: json['name'] as String? ?? '',
      original_name: json['original_name'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      profile_path: json['profile_path'] as String? ?? '',
      cast_id: json['cast_id'] as int? ?? 0,
      character: json['character'] as String? ?? '',
      credit_id: json['credit_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'order': instance.order,
      'known_for_department': instance.known_for_department,
      'name': instance.name,
      'original_name': instance.original_name,
      'popularity': instance.popularity,
      'profile_path': instance.profile_path,
      'cast_id': instance.cast_id,
      'character': instance.character,
      'credit_id': instance.credit_id,
    };
