// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoData _$VideoDataFromJson(Map<String, dynamic> json) {
  return _VideoData.fromJson(json);
}

/// @nodoc
mixin _$VideoData {
  int get id => throw _privateConstructorUsedError;
  List<Video> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDataCopyWith<VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataCopyWith<$Res> {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) then) =
      _$VideoDataCopyWithImpl<$Res, VideoData>;
  @useResult
  $Res call({int id, List<Video> results});
}

/// @nodoc
class _$VideoDataCopyWithImpl<$Res, $Val extends VideoData>
    implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoDataCopyWith<$Res> implements $VideoDataCopyWith<$Res> {
  factory _$$_VideoDataCopyWith(
          _$_VideoData value, $Res Function(_$_VideoData) then) =
      __$$_VideoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Video> results});
}

/// @nodoc
class __$$_VideoDataCopyWithImpl<$Res>
    extends _$VideoDataCopyWithImpl<$Res, _$_VideoData>
    implements _$$_VideoDataCopyWith<$Res> {
  __$$_VideoDataCopyWithImpl(
      _$_VideoData _value, $Res Function(_$_VideoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_$_VideoData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoData implements _VideoData {
  const _$_VideoData({this.id = 0, final List<Video> results = const []})
      : _results = results;

  factory _$_VideoData.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDataFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<Video> _results;
  @override
  @JsonKey()
  List<Video> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VideoData(id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoDataCopyWith<_$_VideoData> get copyWith =>
      __$$_VideoDataCopyWithImpl<_$_VideoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDataToJson(
      this,
    );
  }
}

abstract class _VideoData implements VideoData {
  const factory _VideoData({final int id, final List<Video> results}) =
      _$_VideoData;

  factory _VideoData.fromJson(Map<String, dynamic> json) =
      _$_VideoData.fromJson;

  @override
  int get id;
  @override
  List<Video> get results;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDataCopyWith<_$_VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}
