// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'belongs_to_collection.freezed.dart';
part 'belongs_to_collection.g.dart';

@freezed
class BelongsToCollection with _$BelongsToCollection {
  const factory BelongsToCollection({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String poster_path,
    @Default('') String backdrop_path,
  }) = _BelongsToCollection;

  factory BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionFromJson(json);
}
