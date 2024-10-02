// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_quot_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardQuotState {
  bool get isDoubleTapped => throw _privateConstructorUsedError;

  /// Create a copy of CardQuotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardQuotStateCopyWith<CardQuotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardQuotStateCopyWith<$Res> {
  factory $CardQuotStateCopyWith(
          CardQuotState value, $Res Function(CardQuotState) then) =
      _$CardQuotStateCopyWithImpl<$Res, CardQuotState>;
  @useResult
  $Res call({bool isDoubleTapped});
}

/// @nodoc
class _$CardQuotStateCopyWithImpl<$Res, $Val extends CardQuotState>
    implements $CardQuotStateCopyWith<$Res> {
  _$CardQuotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardQuotState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDoubleTapped = null,
  }) {
    return _then(_value.copyWith(
      isDoubleTapped: null == isDoubleTapped
          ? _value.isDoubleTapped
          : isDoubleTapped // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardQuotStateImplCopyWith<$Res>
    implements $CardQuotStateCopyWith<$Res> {
  factory _$$CardQuotStateImplCopyWith(
          _$CardQuotStateImpl value, $Res Function(_$CardQuotStateImpl) then) =
      __$$CardQuotStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDoubleTapped});
}

/// @nodoc
class __$$CardQuotStateImplCopyWithImpl<$Res>
    extends _$CardQuotStateCopyWithImpl<$Res, _$CardQuotStateImpl>
    implements _$$CardQuotStateImplCopyWith<$Res> {
  __$$CardQuotStateImplCopyWithImpl(
      _$CardQuotStateImpl _value, $Res Function(_$CardQuotStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardQuotState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDoubleTapped = null,
  }) {
    return _then(_$CardQuotStateImpl(
      isDoubleTapped: null == isDoubleTapped
          ? _value.isDoubleTapped
          : isDoubleTapped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CardQuotStateImpl implements _CardQuotState {
  const _$CardQuotStateImpl({required this.isDoubleTapped});

  @override
  final bool isDoubleTapped;

  @override
  String toString() {
    return 'CardQuotState(isDoubleTapped: $isDoubleTapped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardQuotStateImpl &&
            (identical(other.isDoubleTapped, isDoubleTapped) ||
                other.isDoubleTapped == isDoubleTapped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDoubleTapped);

  /// Create a copy of CardQuotState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardQuotStateImplCopyWith<_$CardQuotStateImpl> get copyWith =>
      __$$CardQuotStateImplCopyWithImpl<_$CardQuotStateImpl>(this, _$identity);
}

abstract class _CardQuotState implements CardQuotState {
  const factory _CardQuotState({required final bool isDoubleTapped}) =
      _$CardQuotStateImpl;

  @override
  bool get isDoubleTapped;

  /// Create a copy of CardQuotState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardQuotStateImplCopyWith<_$CardQuotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
