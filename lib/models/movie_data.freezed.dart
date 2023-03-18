// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieData _$MovieDataFromJson(Map<String, dynamic> json) {
  return _MovieData.fromJson(json);
}

/// @nodoc
mixin _$MovieData {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDataCopyWith<MovieData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDataCopyWith<$Res> {
  factory $MovieDataCopyWith(MovieData value, $Res Function(MovieData) then) =
      _$MovieDataCopyWithImpl<$Res, MovieData>;
  @useResult
  $Res call(
      {int page, List<Movie> results, int total_pages, int total_results});
}

/// @nodoc
class _$MovieDataCopyWithImpl<$Res, $Val extends MovieData>
    implements $MovieDataCopyWith<$Res> {
  _$MovieDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDataCopyWith<$Res> implements $MovieDataCopyWith<$Res> {
  factory _$$_MovieDataCopyWith(
          _$_MovieData value, $Res Function(_$_MovieData) then) =
      __$$_MovieDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, List<Movie> results, int total_pages, int total_results});
}

/// @nodoc
class __$$_MovieDataCopyWithImpl<$Res>
    extends _$MovieDataCopyWithImpl<$Res, _$_MovieData>
    implements _$$_MovieDataCopyWith<$Res> {
  __$$_MovieDataCopyWithImpl(
      _$_MovieData _value, $Res Function(_$_MovieData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_$_MovieData(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieData implements _MovieData {
  const _$_MovieData(
      {this.page = 0,
      final List<Movie> results = const [],
      this.total_pages = 0,
      this.total_results = 0})
      : _results = results;

  factory _$_MovieData.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDataFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<Movie> _results;
  @override
  @JsonKey()
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final int total_pages;
  @override
  @JsonKey()
  final int total_results;

  @override
  String toString() {
    return 'MovieData(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieData &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDataCopyWith<_$_MovieData> get copyWith =>
      __$$_MovieDataCopyWithImpl<_$_MovieData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDataToJson(
      this,
    );
  }
}

abstract class _MovieData implements MovieData {
  const factory _MovieData(
      {final int page,
      final List<Movie> results,
      final int total_pages,
      final int total_results}) = _$_MovieData;

  factory _MovieData.fromJson(Map<String, dynamic> json) =
      _$_MovieData.fromJson;

  @override
  int get page;
  @override
  List<Movie> get results;
  @override
  int get total_pages;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDataCopyWith<_$_MovieData> get copyWith =>
      throw _privateConstructorUsedError;
}
