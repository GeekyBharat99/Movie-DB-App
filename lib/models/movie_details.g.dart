// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      adult: json['adult'] as bool? ?? false,
      video: json['video'] as bool? ?? false,
      backdrop_path: json['backdrop_path'] as String? ?? '',
      belongs_to_collection: json['belongs_to_collection'] == null
          ? null
          : BelongsToCollection.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as int? ?? 0,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      homepage: json['homepage'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      imdb_id: json['imdb_id'] as String? ?? '',
      original_language: json['original_language'] as String? ?? '',
      original_title: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      vote_average: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      poster_path: json['poster_path'] as String? ?? '',
      production_companies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) => Company.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      production_countries: (json['production_countries'] as List<dynamic>?)
              ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      release_date: json['release_date'] as String? ?? '',
      revenue: json['revenue'] as int? ?? 0,
      runtime: json['runtime'] as int? ?? 0,
      vote_count: json['vote_count'] as int? ?? 0,
      spoken_languages: (json['spoken_languages'] as List<dynamic>?)
              ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'video': instance.video,
      'backdrop_path': instance.backdrop_path,
      'belongs_to_collection': instance.belongs_to_collection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdb_id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'vote_average': instance.vote_average,
      'poster_path': instance.poster_path,
      'production_companies': instance.production_companies,
      'production_countries': instance.production_countries,
      'release_date': instance.release_date,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'vote_count': instance.vote_count,
      'spoken_languages': instance.spoken_languages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
    };
