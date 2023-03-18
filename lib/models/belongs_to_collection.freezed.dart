// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'belongs_to_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BelongsToCollection _$BelongsToCollectionFromJson(Map<String, dynamic> json) {
  return _BelongsToCollection.fromJson(json);
}

/// @nodoc
mixin _$BelongsToCollection {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get poster_path => throw _privateConstructorUsedError;
  String get backdrop_path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BelongsToCollectionCopyWith<BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BelongsToCollectionCopyWith<$Res> {
  factory $BelongsToCollectionCopyWith(
          BelongsToCollection value, $Res Function(BelongsToCollection) then) =
      _$BelongsToCollectionCopyWithImpl<$Res, BelongsToCollection>;
  @useResult
  $Res call({int id, String name, String poster_path, String backdrop_path});
}

/// @nodoc
class _$BelongsToCollectionCopyWithImpl<$Res, $Val extends BelongsToCollection>
    implements $BelongsToCollectionCopyWith<$Res> {
  _$BelongsToCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster_path = null,
    Object? backdrop_path = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop_path: null == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BelongsToCollectionCopyWith<$Res>
    implements $BelongsToCollectionCopyWith<$Res> {
  factory _$$_BelongsToCollectionCopyWith(_$_BelongsToCollection value,
          $Res Function(_$_BelongsToCollection) then) =
      __$$_BelongsToCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String poster_path, String backdrop_path});
}

/// @nodoc
class __$$_BelongsToCollectionCopyWithImpl<$Res>
    extends _$BelongsToCollectionCopyWithImpl<$Res, _$_BelongsToCollection>
    implements _$$_BelongsToCollectionCopyWith<$Res> {
  __$$_BelongsToCollectionCopyWithImpl(_$_BelongsToCollection _value,
      $Res Function(_$_BelongsToCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster_path = null,
    Object? backdrop_path = null,
  }) {
    return _then(_$_BelongsToCollection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      backdrop_path: null == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BelongsToCollection implements _BelongsToCollection {
  const _$_BelongsToCollection(
      {this.id = 0,
      this.name = '',
      this.poster_path = '',
      this.backdrop_path = ''});

  factory _$_BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$$_BelongsToCollectionFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String poster_path;
  @override
  @JsonKey()
  final String backdrop_path;

  @override
  String toString() {
    return 'BelongsToCollection(id: $id, name: $name, poster_path: $poster_path, backdrop_path: $backdrop_path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BelongsToCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, poster_path, backdrop_path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      __$$_BelongsToCollectionCopyWithImpl<_$_BelongsToCollection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BelongsToCollectionToJson(
      this,
    );
  }
}

abstract class _BelongsToCollection implements BelongsToCollection {
  const factory _BelongsToCollection(
      {final int id,
      final String name,
      final String poster_path,
      final String backdrop_path}) = _$_BelongsToCollection;

  factory _BelongsToCollection.fromJson(Map<String, dynamic> json) =
      _$_BelongsToCollection.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get poster_path;
  @override
  String get backdrop_path;
  @override
  @JsonKey(ignore: true)
  _$$_BelongsToCollectionCopyWith<_$_BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
