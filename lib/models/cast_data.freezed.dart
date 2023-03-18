// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastData _$CastDataFromJson(Map<String, dynamic> json) {
  return _CastData.fromJson(json);
}

/// @nodoc
mixin _$CastData {
  int get id => throw _privateConstructorUsedError;
  List<Cast> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastDataCopyWith<CastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDataCopyWith<$Res> {
  factory $CastDataCopyWith(CastData value, $Res Function(CastData) then) =
      _$CastDataCopyWithImpl<$Res, CastData>;
  @useResult
  $Res call({int id, List<Cast> cast});
}

/// @nodoc
class _$CastDataCopyWithImpl<$Res, $Val extends CastData>
    implements $CastDataCopyWith<$Res> {
  _$CastDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastDataCopyWith<$Res> implements $CastDataCopyWith<$Res> {
  factory _$$_CastDataCopyWith(
          _$_CastData value, $Res Function(_$_CastData) then) =
      __$$_CastDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Cast> cast});
}

/// @nodoc
class __$$_CastDataCopyWithImpl<$Res>
    extends _$CastDataCopyWithImpl<$Res, _$_CastData>
    implements _$$_CastDataCopyWith<$Res> {
  __$$_CastDataCopyWithImpl(
      _$_CastData _value, $Res Function(_$_CastData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
  }) {
    return _then(_$_CastData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastData implements _CastData {
  const _$_CastData({this.id = 0, final List<Cast> cast = const []})
      : _cast = cast;

  factory _$_CastData.fromJson(Map<String, dynamic> json) =>
      _$$_CastDataFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<Cast> _cast;
  @override
  @JsonKey()
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'CastData(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastDataCopyWith<_$_CastData> get copyWith =>
      __$$_CastDataCopyWithImpl<_$_CastData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastDataToJson(
      this,
    );
  }
}

abstract class _CastData implements CastData {
  const factory _CastData({final int id, final List<Cast> cast}) = _$_CastData;

  factory _CastData.fromJson(Map<String, dynamic> json) = _$_CastData.fromJson;

  @override
  int get id;
  @override
  List<Cast> get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CastDataCopyWith<_$_CastData> get copyWith =>
      throw _privateConstructorUsedError;
}
