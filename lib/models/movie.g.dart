// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      adult: json['adult'] as bool? ?? false,
      video: json['video'] as bool? ?? false,
      backdrop_path: json['backdrop_path'] as String? ?? '',
      genre_ids: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      id: json['id'] as int? ?? 0,
      vote_count: json['vote_count'] as int? ?? 0,
      original_language: json['original_language'] as String? ?? '',
      original_title: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      poster_path: json['poster_path'] as String? ?? '',
      release_date: json['release_date'] as String? ?? '',
      title: json['title'] as String? ?? '',
      vote_average: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'adult': instance.adult,
      'video': instance.video,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'vote_count': instance.vote_count,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'vote_average': instance.vote_average,
    };
