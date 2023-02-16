// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleState {
// こちらの場合FutureBuilder等が必要
  List<SampleModel> get sampleList =>
      throw _privateConstructorUsedError; // こちらの場合、state.futureSampleList.when~が使える
  AsyncValue<List<SampleModel>> get futureSampleList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res, SampleState>;
  @useResult
  $Res call(
      {List<SampleModel> sampleList,
      AsyncValue<List<SampleModel>> futureSampleList});
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res, $Val extends SampleState>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleList = null,
    Object? futureSampleList = null,
  }) {
    return _then(_value.copyWith(
      sampleList: null == sampleList
          ? _value.sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      futureSampleList: null == futureSampleList
          ? _value.futureSampleList
          : futureSampleList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SampleModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$_SampleStateCopyWith(
          _$_SampleState value, $Res Function(_$_SampleState) then) =
      __$$_SampleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SampleModel> sampleList,
      AsyncValue<List<SampleModel>> futureSampleList});
}

/// @nodoc
class __$$_SampleStateCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$_SampleState>
    implements _$$_SampleStateCopyWith<$Res> {
  __$$_SampleStateCopyWithImpl(
      _$_SampleState _value, $Res Function(_$_SampleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleList = null,
    Object? futureSampleList = null,
  }) {
    return _then(_$_SampleState(
      sampleList: null == sampleList
          ? _value._sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      futureSampleList: null == futureSampleList
          ? _value.futureSampleList
          : futureSampleList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SampleModel>>,
    ));
  }
}

/// @nodoc

class _$_SampleState implements _SampleState {
  const _$_SampleState(
      {final List<SampleModel> sampleList = const <SampleModel>[],
      this.futureSampleList = const AsyncValue.loading()})
      : _sampleList = sampleList;

// こちらの場合FutureBuilder等が必要
  final List<SampleModel> _sampleList;
// こちらの場合FutureBuilder等が必要
  @override
  @JsonKey()
  List<SampleModel> get sampleList {
    if (_sampleList is EqualUnmodifiableListView) return _sampleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sampleList);
  }

// こちらの場合、state.futureSampleList.when~が使える
  @override
  @JsonKey()
  final AsyncValue<List<SampleModel>> futureSampleList;

  @override
  String toString() {
    return 'SampleState(sampleList: $sampleList, futureSampleList: $futureSampleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleState &&
            const DeepCollectionEquality()
                .equals(other._sampleList, _sampleList) &&
            (identical(other.futureSampleList, futureSampleList) ||
                other.futureSampleList == futureSampleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sampleList), futureSampleList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      __$$_SampleStateCopyWithImpl<_$_SampleState>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  const factory _SampleState(
      {final List<SampleModel> sampleList,
      final AsyncValue<List<SampleModel>> futureSampleList}) = _$_SampleState;

  @override // こちらの場合FutureBuilder等が必要
  List<SampleModel> get sampleList;
  @override // こちらの場合、state.futureSampleList.when~が使える
  AsyncValue<List<SampleModel>> get futureSampleList;
  @override
  @JsonKey(ignore: true)
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
