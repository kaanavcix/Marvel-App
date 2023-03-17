// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloaded_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadedState {
  DownloadedStatus get status => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadedStatus status, int index) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DownloadedStatus status, int index)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadedStatus status, int index)? initial,
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
  $DownloadedStateCopyWith<DownloadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadedStateCopyWith<$Res> {
  factory $DownloadedStateCopyWith(
          DownloadedState value, $Res Function(DownloadedState) then) =
      _$DownloadedStateCopyWithImpl<$Res, DownloadedState>;
  @useResult
  $Res call({DownloadedStatus status, int index});

  $DownloadedStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DownloadedStateCopyWithImpl<$Res, $Val extends DownloadedState>
    implements $DownloadedStateCopyWith<$Res> {
  _$DownloadedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadedStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DownloadedStatusCopyWith<$Res> get status {
    return $DownloadedStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DownloadedStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DownloadedStatus status, int index});

  @override
  $DownloadedStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DownloadedStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? index = null,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadedStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.status, required this.index});

  @override
  final DownloadedStatus status;
  @override
  final int index;

  @override
  String toString() {
    return 'DownloadedState.initial(status: $status, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadedStatus status, int index) initial,
  }) {
    return initial(status, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DownloadedStatus status, int index)? initial,
  }) {
    return initial?.call(status, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadedStatus status, int index)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, index);
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

abstract class _Initial implements DownloadedState {
  const factory _Initial(
      {required final DownloadedStatus status,
      required final int index}) = _$_Initial;

  @override
  DownloadedStatus get status;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadedStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(bool? islaoding) laoding,
    required TResult Function(bool? iscompleted) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(bool? islaoding)? laoding,
    TResult? Function(bool? iscompleted)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(bool? islaoding)? laoding,
    TResult Function(bool? iscompleted)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inital value) inital,
    required TResult Function(_Laoding value) laoding,
    required TResult Function(_Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inital value)? inital,
    TResult? Function(_Laoding value)? laoding,
    TResult? Function(_Completed value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inital value)? inital,
    TResult Function(_Laoding value)? laoding,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadedStatusCopyWith<$Res> {
  factory $DownloadedStatusCopyWith(
          DownloadedStatus value, $Res Function(DownloadedStatus) then) =
      _$DownloadedStatusCopyWithImpl<$Res, DownloadedStatus>;
}

/// @nodoc
class _$DownloadedStatusCopyWithImpl<$Res, $Val extends DownloadedStatus>
    implements $DownloadedStatusCopyWith<$Res> {
  _$DownloadedStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitalCopyWith<$Res> {
  factory _$$_InitalCopyWith(_$_Inital value, $Res Function(_$_Inital) then) =
      __$$_InitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitalCopyWithImpl<$Res>
    extends _$DownloadedStatusCopyWithImpl<$Res, _$_Inital>
    implements _$$_InitalCopyWith<$Res> {
  __$$_InitalCopyWithImpl(_$_Inital _value, $Res Function(_$_Inital) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Inital implements _Inital {
  const _$_Inital();

  @override
  String toString() {
    return 'DownloadedStatus.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(bool? islaoding) laoding,
    required TResult Function(bool? iscompleted) completed,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(bool? islaoding)? laoding,
    TResult? Function(bool? iscompleted)? completed,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(bool? islaoding)? laoding,
    TResult Function(bool? iscompleted)? completed,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inital value) inital,
    required TResult Function(_Laoding value) laoding,
    required TResult Function(_Completed value) completed,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inital value)? inital,
    TResult? Function(_Laoding value)? laoding,
    TResult? Function(_Completed value)? completed,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inital value)? inital,
    TResult Function(_Laoding value)? laoding,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Inital implements DownloadedStatus {
  const factory _Inital() = _$_Inital;
}

/// @nodoc
abstract class _$$_LaodingCopyWith<$Res> {
  factory _$$_LaodingCopyWith(
          _$_Laoding value, $Res Function(_$_Laoding) then) =
      __$$_LaodingCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? islaoding});
}

/// @nodoc
class __$$_LaodingCopyWithImpl<$Res>
    extends _$DownloadedStatusCopyWithImpl<$Res, _$_Laoding>
    implements _$$_LaodingCopyWith<$Res> {
  __$$_LaodingCopyWithImpl(_$_Laoding _value, $Res Function(_$_Laoding) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? islaoding = freezed,
  }) {
    return _then(_$_Laoding(
      islaoding: freezed == islaoding
          ? _value.islaoding
          : islaoding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Laoding implements _Laoding {
  const _$_Laoding({this.islaoding});

  @override
  final bool? islaoding;

  @override
  String toString() {
    return 'DownloadedStatus.laoding(islaoding: $islaoding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Laoding &&
            (identical(other.islaoding, islaoding) ||
                other.islaoding == islaoding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, islaoding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaodingCopyWith<_$_Laoding> get copyWith =>
      __$$_LaodingCopyWithImpl<_$_Laoding>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(bool? islaoding) laoding,
    required TResult Function(bool? iscompleted) completed,
  }) {
    return laoding(islaoding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(bool? islaoding)? laoding,
    TResult? Function(bool? iscompleted)? completed,
  }) {
    return laoding?.call(islaoding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(bool? islaoding)? laoding,
    TResult Function(bool? iscompleted)? completed,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(islaoding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inital value) inital,
    required TResult Function(_Laoding value) laoding,
    required TResult Function(_Completed value) completed,
  }) {
    return laoding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inital value)? inital,
    TResult? Function(_Laoding value)? laoding,
    TResult? Function(_Completed value)? completed,
  }) {
    return laoding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inital value)? inital,
    TResult Function(_Laoding value)? laoding,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(this);
    }
    return orElse();
  }
}

abstract class _Laoding implements DownloadedStatus {
  const factory _Laoding({final bool? islaoding}) = _$_Laoding;

  bool? get islaoding;
  @JsonKey(ignore: true)
  _$$_LaodingCopyWith<_$_Laoding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? iscompleted});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$DownloadedStatusCopyWithImpl<$Res, _$_Completed>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iscompleted = freezed,
  }) {
    return _then(_$_Completed(
      iscompleted: freezed == iscompleted
          ? _value.iscompleted
          : iscompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed({this.iscompleted});

  @override
  final bool? iscompleted;

  @override
  String toString() {
    return 'DownloadedStatus.completed(iscompleted: $iscompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            (identical(other.iscompleted, iscompleted) ||
                other.iscompleted == iscompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iscompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(bool? islaoding) laoding,
    required TResult Function(bool? iscompleted) completed,
  }) {
    return completed(iscompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function(bool? islaoding)? laoding,
    TResult? Function(bool? iscompleted)? completed,
  }) {
    return completed?.call(iscompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(bool? islaoding)? laoding,
    TResult Function(bool? iscompleted)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(iscompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inital value) inital,
    required TResult Function(_Laoding value) laoding,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inital value)? inital,
    TResult? Function(_Laoding value)? laoding,
    TResult? Function(_Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inital value)? inital,
    TResult Function(_Laoding value)? laoding,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements DownloadedStatus {
  const factory _Completed({final bool? iscompleted}) = _$_Completed;

  bool? get iscompleted;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}
