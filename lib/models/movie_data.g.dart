// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieData _$$_MovieDataFromJson(Map<String, dynamic> json) => _$_MovieData(
      page: json['page'] as int? ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total_pages: json['total_pages'] as int? ?? 0,
      total_results: json['total_results'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MovieDataToJson(_$_MovieData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
