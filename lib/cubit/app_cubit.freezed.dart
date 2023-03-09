// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  AppStateEnum? get state => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppStateEnum? state) initial,
    required TResult Function(AppStateEnum? state) finaled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppStateEnum? state)? initial,
    TResult? Function(AppStateEnum? state)? finaled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppStateEnum? state)? initial,
    TResult Function(AppStateEnum? state)? finaled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Finaled value) finaled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Finaled value)? finaled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Finaled value)? finaled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AppStateEnum? state});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppStateEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStateEnum? state});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_Initial(
      freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppStateEnum?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.state);

  @override
  final AppStateEnum? state;

  @override
  String toString() {
    return 'AppState.initial(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppStateEnum? state) initial,
    required TResult Function(AppStateEnum? state) finaled,
  }) {
    return initial(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppStateEnum? state)? initial,
    TResult? Function(AppStateEnum? state)? finaled,
  }) {
    return initial?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppStateEnum? state)? initial,
    TResult Function(AppStateEnum? state)? finaled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Finaled value) finaled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Finaled value)? finaled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Finaled value)? finaled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial(final AppStateEnum? state) = _$_Initial;

  @override
  AppStateEnum? get state;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinaledCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_FinaledCopyWith(
          _$_Finaled value, $Res Function(_$_Finaled) then) =
      __$$_FinaledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStateEnum? state});
}

/// @nodoc
class __$$_FinaledCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Finaled>
    implements _$$_FinaledCopyWith<$Res> {
  __$$_FinaledCopyWithImpl(_$_Finaled _value, $Res Function(_$_Finaled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_Finaled(
      freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppStateEnum?,
    ));
  }
}

/// @nodoc

class _$_Finaled implements _Finaled {
  const _$_Finaled(this.state);

  @override
  final AppStateEnum? state;

  @override
  String toString() {
    return 'AppState.finaled(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Finaled &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinaledCopyWith<_$_Finaled> get copyWith =>
      __$$_FinaledCopyWithImpl<_$_Finaled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppStateEnum? state) initial,
    required TResult Function(AppStateEnum? state) finaled,
  }) {
    return finaled(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppStateEnum? state)? initial,
    TResult? Function(AppStateEnum? state)? finaled,
  }) {
    return finaled?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppStateEnum? state)? initial,
    TResult Function(AppStateEnum? state)? finaled,
    required TResult orElse(),
  }) {
    if (finaled != null) {
      return finaled(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Finaled value) finaled,
  }) {
    return finaled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Finaled value)? finaled,
  }) {
    return finaled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Finaled value)? finaled,
    required TResult orElse(),
  }) {
    if (finaled != null) {
      return finaled(this);
    }
    return orElse();
  }
}

abstract class _Finaled implements AppState {
  const factory _Finaled(final AppStateEnum? state) = _$_Finaled;

  @override
  AppStateEnum? get state;
  @override
  @JsonKey(ignore: true)
  _$$_FinaledCopyWith<_$_Finaled> get copyWith =>
      throw _privateConstructorUsedError;
}
