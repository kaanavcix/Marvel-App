// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingState {
  int get selectedIndex => throw _privateConstructorUsedError;
  AppStateEnum get state => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex, AppStateEnum state) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex, AppStateEnum state)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex, AppStateEnum state)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({int selectedIndex, AppStateEnum state});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppStateEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, AppStateEnum state});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? state = null,
  }) {
    return _then(_$_Initial(
      null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppStateEnum,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.selectedIndex, {required this.state});

  @override
  final int selectedIndex;
  @override
  final AppStateEnum state;

  @override
  String toString() {
    return 'OnboardingState.initial(selectedIndex: $selectedIndex, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex, AppStateEnum state) initial,
  }) {
    return initial(selectedIndex, state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex, AppStateEnum state)? initial,
  }) {
    return initial?.call(selectedIndex, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex, AppStateEnum state)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedIndex, state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingState {
  const factory _Initial(final int selectedIndex,
      {required final AppStateEnum state}) = _$_Initial;

  @override
  int get selectedIndex;
  @override
  AppStateEnum get state;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
