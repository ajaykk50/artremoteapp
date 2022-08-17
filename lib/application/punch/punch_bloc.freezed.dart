// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'punch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PunchEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) punchDetails,
    required TResult Function(String token, String datetime, String comment)
        onPunchClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PunchDetails value) punchDetails,
    required TResult Function(OnPunchClick value) onPunchClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PunchEventCopyWith<PunchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PunchEventCopyWith<$Res> {
  factory $PunchEventCopyWith(
          PunchEvent value, $Res Function(PunchEvent) then) =
      _$PunchEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$PunchEventCopyWithImpl<$Res> implements $PunchEventCopyWith<$Res> {
  _$PunchEventCopyWithImpl(this._value, this._then);

  final PunchEvent _value;
  // ignore: unused_field
  final $Res Function(PunchEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$PunchDetailsCopyWith<$Res>
    implements $PunchEventCopyWith<$Res> {
  factory _$$PunchDetailsCopyWith(
          _$PunchDetails value, $Res Function(_$PunchDetails) then) =
      __$$PunchDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$PunchDetailsCopyWithImpl<$Res> extends _$PunchEventCopyWithImpl<$Res>
    implements _$$PunchDetailsCopyWith<$Res> {
  __$$PunchDetailsCopyWithImpl(
      _$PunchDetails _value, $Res Function(_$PunchDetails) _then)
      : super(_value, (v) => _then(v as _$PunchDetails));

  @override
  _$PunchDetails get _value => super._value as _$PunchDetails;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$PunchDetails(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PunchDetails with DiagnosticableTreeMixin implements PunchDetails {
  const _$PunchDetails({required this.token});

  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PunchEvent.punchDetails(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PunchEvent.punchDetails'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PunchDetails &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$PunchDetailsCopyWith<_$PunchDetails> get copyWith =>
      __$$PunchDetailsCopyWithImpl<_$PunchDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) punchDetails,
    required TResult Function(String token, String datetime, String comment)
        onPunchClick,
  }) {
    return punchDetails(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
  }) {
    return punchDetails?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
    required TResult orElse(),
  }) {
    if (punchDetails != null) {
      return punchDetails(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PunchDetails value) punchDetails,
    required TResult Function(OnPunchClick value) onPunchClick,
  }) {
    return punchDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
  }) {
    return punchDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
    required TResult orElse(),
  }) {
    if (punchDetails != null) {
      return punchDetails(this);
    }
    return orElse();
  }
}

abstract class PunchDetails implements PunchEvent {
  const factory PunchDetails({required final String token}) = _$PunchDetails;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$PunchDetailsCopyWith<_$PunchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPunchClickCopyWith<$Res>
    implements $PunchEventCopyWith<$Res> {
  factory _$$OnPunchClickCopyWith(
          _$OnPunchClick value, $Res Function(_$OnPunchClick) then) =
      __$$OnPunchClickCopyWithImpl<$Res>;
  @override
  $Res call({String token, String datetime, String comment});
}

/// @nodoc
class __$$OnPunchClickCopyWithImpl<$Res> extends _$PunchEventCopyWithImpl<$Res>
    implements _$$OnPunchClickCopyWith<$Res> {
  __$$OnPunchClickCopyWithImpl(
      _$OnPunchClick _value, $Res Function(_$OnPunchClick) _then)
      : super(_value, (v) => _then(v as _$OnPunchClick));

  @override
  _$OnPunchClick get _value => super._value as _$OnPunchClick;

  @override
  $Res call({
    Object? token = freezed,
    Object? datetime = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$OnPunchClick(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPunchClick with DiagnosticableTreeMixin implements OnPunchClick {
  const _$OnPunchClick(
      {required this.token, required this.datetime, required this.comment});

  @override
  final String token;
  @override
  final String datetime;
  @override
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PunchEvent.onPunchClick(token: $token, datetime: $datetime, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PunchEvent.onPunchClick'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('datetime', datetime))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPunchClick &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(datetime),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$$OnPunchClickCopyWith<_$OnPunchClick> get copyWith =>
      __$$OnPunchClickCopyWithImpl<_$OnPunchClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) punchDetails,
    required TResult Function(String token, String datetime, String comment)
        onPunchClick,
  }) {
    return onPunchClick(token, datetime, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
  }) {
    return onPunchClick?.call(token, datetime, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? punchDetails,
    TResult Function(String token, String datetime, String comment)?
        onPunchClick,
    required TResult orElse(),
  }) {
    if (onPunchClick != null) {
      return onPunchClick(token, datetime, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PunchDetails value) punchDetails,
    required TResult Function(OnPunchClick value) onPunchClick,
  }) {
    return onPunchClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
  }) {
    return onPunchClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PunchDetails value)? punchDetails,
    TResult Function(OnPunchClick value)? onPunchClick,
    required TResult orElse(),
  }) {
    if (onPunchClick != null) {
      return onPunchClick(this);
    }
    return orElse();
  }
}

abstract class OnPunchClick implements PunchEvent {
  const factory OnPunchClick(
      {required final String token,
      required final String datetime,
      required final String comment}) = _$OnPunchClick;

  @override
  String get token;
  String get datetime;
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$OnPunchClickCopyWith<_$OnPunchClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PunchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  PunchResponse? get punchresponse => throw _privateConstructorUsedError;
  PunchingResponse? get punchingresponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PunchStateCopyWith<PunchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PunchStateCopyWith<$Res> {
  factory $PunchStateCopyWith(
          PunchState value, $Res Function(PunchState) then) =
      _$PunchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      PunchResponse? punchresponse,
      PunchingResponse? punchingresponse});
}

/// @nodoc
class _$PunchStateCopyWithImpl<$Res> implements $PunchStateCopyWith<$Res> {
  _$PunchStateCopyWithImpl(this._value, this._then);

  final PunchState _value;
  // ignore: unused_field
  final $Res Function(PunchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? punchresponse = freezed,
    Object? punchingresponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      punchresponse: punchresponse == freezed
          ? _value.punchresponse
          : punchresponse // ignore: cast_nullable_to_non_nullable
              as PunchResponse?,
      punchingresponse: punchingresponse == freezed
          ? _value.punchingresponse
          : punchingresponse // ignore: cast_nullable_to_non_nullable
              as PunchingResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_PunchStateCopyWith<$Res>
    implements $PunchStateCopyWith<$Res> {
  factory _$$_PunchStateCopyWith(
          _$_PunchState value, $Res Function(_$_PunchState) then) =
      __$$_PunchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      PunchResponse? punchresponse,
      PunchingResponse? punchingresponse});
}

/// @nodoc
class __$$_PunchStateCopyWithImpl<$Res> extends _$PunchStateCopyWithImpl<$Res>
    implements _$$_PunchStateCopyWith<$Res> {
  __$$_PunchStateCopyWithImpl(
      _$_PunchState _value, $Res Function(_$_PunchState) _then)
      : super(_value, (v) => _then(v as _$_PunchState));

  @override
  _$_PunchState get _value => super._value as _$_PunchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? punchresponse = freezed,
    Object? punchingresponse = freezed,
  }) {
    return _then(_$_PunchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      punchresponse: punchresponse == freezed
          ? _value.punchresponse
          : punchresponse // ignore: cast_nullable_to_non_nullable
              as PunchResponse?,
      punchingresponse: punchingresponse == freezed
          ? _value.punchingresponse
          : punchingresponse // ignore: cast_nullable_to_non_nullable
              as PunchingResponse?,
    ));
  }
}

/// @nodoc

class _$_PunchState with DiagnosticableTreeMixin implements _PunchState {
  const _$_PunchState(
      {required this.isLoading,
      required this.isError,
      required this.punchresponse,
      required this.punchingresponse});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final PunchResponse? punchresponse;
  @override
  final PunchingResponse? punchingresponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PunchState(isLoading: $isLoading, isError: $isError, punchresponse: $punchresponse, punchingresponse: $punchingresponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PunchState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('punchresponse', punchresponse))
      ..add(DiagnosticsProperty('punchingresponse', punchingresponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PunchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.punchresponse, punchresponse) &&
            const DeepCollectionEquality()
                .equals(other.punchingresponse, punchingresponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(punchresponse),
      const DeepCollectionEquality().hash(punchingresponse));

  @JsonKey(ignore: true)
  @override
  _$$_PunchStateCopyWith<_$_PunchState> get copyWith =>
      __$$_PunchStateCopyWithImpl<_$_PunchState>(this, _$identity);
}

abstract class _PunchState implements PunchState {
  const factory _PunchState(
      {required final bool isLoading,
      required final bool isError,
      required final PunchResponse? punchresponse,
      required final PunchingResponse? punchingresponse}) = _$_PunchState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  PunchResponse? get punchresponse;
  @override
  PunchingResponse? get punchingresponse;
  @override
  @JsonKey(ignore: true)
  _$$_PunchStateCopyWith<_$_PunchState> get copyWith =>
      throw _privateConstructorUsedError;
}
