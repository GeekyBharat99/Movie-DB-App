// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BelongsToCollection _$$_BelongsToCollectionFromJson(
        Map<String, dynamic> json) =>
    _$_BelongsToCollection(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      poster_path: json['poster_path'] as String? ?? '',
      backdrop_path: json['backdrop_path'] as String? ?? '',
    );

Map<String, dynamic> _$$_BelongsToCollectionToJson(
        _$_BelongsToCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };
