// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mydata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyData {
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyDataCopyWith<MyData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDataCopyWith<$Res> {
  factory $MyDataCopyWith(MyData value, $Res Function(MyData) then) =
      _$MyDataCopyWithImpl<$Res, MyData>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$MyDataCopyWithImpl<$Res, $Val extends MyData>
    implements $MyDataCopyWith<$Res> {
  _$MyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyDataImplCopyWith<$Res> implements $MyDataCopyWith<$Res> {
  factory _$$MyDataImplCopyWith(
          _$MyDataImpl value, $Res Function(_$MyDataImpl) then) =
      __$$MyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$MyDataImplCopyWithImpl<$Res>
    extends _$MyDataCopyWithImpl<$Res, _$MyDataImpl>
    implements _$$MyDataImplCopyWith<$Res> {
  __$$MyDataImplCopyWithImpl(
      _$MyDataImpl _value, $Res Function(_$MyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$MyDataImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MyDataImpl implements _MyData {
  const _$MyDataImpl({this.value = 0.5});

  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'MyData(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyDataImplCopyWith<_$MyDataImpl> get copyWith =>
      __$$MyDataImplCopyWithImpl<_$MyDataImpl>(this, _$identity);
}

abstract class _MyData implements MyData {
  const factory _MyData({final double value}) = _$MyDataImpl;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$MyDataImplCopyWith<_$MyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
