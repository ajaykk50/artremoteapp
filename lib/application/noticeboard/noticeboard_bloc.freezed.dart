// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'noticeboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoticeboardEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getnotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getnotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getnotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getnotice value) getnotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getnotice value)? getnotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getnotice value)? getnotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticeboardEventCopyWith<NoticeboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeboardEventCopyWith<$Res> {
  factory $NoticeboardEventCopyWith(
          NoticeboardEvent value, $Res Function(NoticeboardEvent) then) =
      _$NoticeboardEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$NoticeboardEventCopyWithImpl<$Res>
    implements $NoticeboardEventCopyWith<$Res> {
  _$NoticeboardEventCopyWithImpl(this._value, this._then);

  final NoticeboardEvent _value;
  // ignore: unused_field
  final $Res Function(NoticeboardEvent) _then;

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
abstract class _$$GetnoticeCopyWith<$Res>
    implements $NoticeboardEventCopyWith<$Res> {
  factory _$$GetnoticeCopyWith(
          _$Getnotice value, $Res Function(_$Getnotice) then) =
      __$$GetnoticeCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetnoticeCopyWithImpl<$Res>
    extends _$NoticeboardEventCopyWithImpl<$Res>
    implements _$$GetnoticeCopyWith<$Res> {
  __$$GetnoticeCopyWithImpl(
      _$Getnotice _value, $Res Function(_$Getnotice) _then)
      : super(_value, (v) => _then(v as _$Getnotice));

  @override
  _$Getnotice get _value => super._value as _$Getnotice;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Getnotice(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getnotice implements Getnotice {
  const _$Getnotice({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'NoticeboardEvent.getnotice(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getnotice &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetnoticeCopyWith<_$Getnotice> get copyWith =>
      __$$GetnoticeCopyWithImpl<_$Getnotice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getnotice,
  }) {
    return getnotice(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getnotice,
  }) {
    return getnotice?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getnotice,
    required TResult orElse(),
  }) {
    if (getnotice != null) {
      return getnotice(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getnotice value) getnotice,
  }) {
    return getnotice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getnotice value)? getnotice,
  }) {
    return getnotice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getnotice value)? getnotice,
    required TResult orElse(),
  }) {
    if (getnotice != null) {
      return getnotice(this);
    }
    return orElse();
  }
}

abstract class Getnotice implements NoticeboardEvent {
  const factory Getnotice({required final String token}) = _$Getnotice;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetnoticeCopyWith<_$Getnotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoticeboardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  List<NoticeBoardResponse> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticeboardStateCopyWith<NoticeboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeboardStateCopyWith<$Res> {
  factory $NoticeboardStateCopyWith(
          NoticeboardState value, $Res Function(NoticeboardState) then) =
      _$NoticeboardStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      List<NoticeBoardResponse> response});
}

/// @nodoc
class _$NoticeboardStateCopyWithImpl<$Res>
    implements $NoticeboardStateCopyWith<$Res> {
  _$NoticeboardStateCopyWithImpl(this._value, this._then);

  final NoticeboardState _value;
  // ignore: unused_field
  final $Res Function(NoticeboardState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServerError: isServerError == freezed
          ? _value.isServerError
          : isServerError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: isClientError == freezed
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<NoticeBoardResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_NoticeboardStateCopyWith<$Res>
    implements $NoticeboardStateCopyWith<$Res> {
  factory _$$_NoticeboardStateCopyWith(
          _$_NoticeboardState value, $Res Function(_$_NoticeboardState) then) =
      __$$_NoticeboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      List<NoticeBoardResponse> response});
}

/// @nodoc
class __$$_NoticeboardStateCopyWithImpl<$Res>
    extends _$NoticeboardStateCopyWithImpl<$Res>
    implements _$$_NoticeboardStateCopyWith<$Res> {
  __$$_NoticeboardStateCopyWithImpl(
      _$_NoticeboardState _value, $Res Function(_$_NoticeboardState) _then)
      : super(_value, (v) => _then(v as _$_NoticeboardState));

  @override
  _$_NoticeboardState get _value => super._value as _$_NoticeboardState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_NoticeboardState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isServerError: isServerError == freezed
          ? _value.isServerError
          : isServerError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: isClientError == freezed
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<NoticeBoardResponse>,
    ));
  }
}

/// @nodoc

class _$_NoticeboardState implements _NoticeboardState {
  const _$_NoticeboardState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required final List<NoticeBoardResponse> response})
      : _response = response;

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  final List<NoticeBoardResponse> _response;
  @override
  List<NoticeBoardResponse> get response {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'NoticeboardState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeboardState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isServerError, isServerError) &&
            const DeepCollectionEquality()
                .equals(other.isClientError, isClientError) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isServerError),
      const DeepCollectionEquality().hash(isClientError),
      const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeboardStateCopyWith<_$_NoticeboardState> get copyWith =>
      __$$_NoticeboardStateCopyWithImpl<_$_NoticeboardState>(this, _$identity);
}

abstract class _NoticeboardState implements NoticeboardState {
  const factory _NoticeboardState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final List<NoticeBoardResponse> response}) = _$_NoticeboardState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  List<NoticeBoardResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeboardStateCopyWith<_$_NoticeboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
