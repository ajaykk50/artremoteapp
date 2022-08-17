// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leave_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeaveTypeEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavetype,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavetype value) getleavetype,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavetype value)? getleavetype,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavetype value)? getleavetype,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaveTypeEventCopyWith<LeaveTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveTypeEventCopyWith<$Res> {
  factory $LeaveTypeEventCopyWith(
          LeaveTypeEvent value, $Res Function(LeaveTypeEvent) then) =
      _$LeaveTypeEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$LeaveTypeEventCopyWithImpl<$Res>
    implements $LeaveTypeEventCopyWith<$Res> {
  _$LeaveTypeEventCopyWithImpl(this._value, this._then);

  final LeaveTypeEvent _value;
  // ignore: unused_field
  final $Res Function(LeaveTypeEvent) _then;

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
abstract class _$$GetleavetypeCopyWith<$Res>
    implements $LeaveTypeEventCopyWith<$Res> {
  factory _$$GetleavetypeCopyWith(
          _$Getleavetype value, $Res Function(_$Getleavetype) then) =
      __$$GetleavetypeCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetleavetypeCopyWithImpl<$Res>
    extends _$LeaveTypeEventCopyWithImpl<$Res>
    implements _$$GetleavetypeCopyWith<$Res> {
  __$$GetleavetypeCopyWithImpl(
      _$Getleavetype _value, $Res Function(_$Getleavetype) _then)
      : super(_value, (v) => _then(v as _$Getleavetype));

  @override
  _$Getleavetype get _value => super._value as _$Getleavetype;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Getleavetype(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getleavetype implements Getleavetype {
  const _$Getleavetype({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LeaveTypeEvent.getleavetype(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getleavetype &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetleavetypeCopyWith<_$Getleavetype> get copyWith =>
      __$$GetleavetypeCopyWithImpl<_$Getleavetype>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavetype,
  }) {
    return getleavetype(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
  }) {
    return getleavetype?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    required TResult orElse(),
  }) {
    if (getleavetype != null) {
      return getleavetype(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavetype value) getleavetype,
  }) {
    return getleavetype(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavetype value)? getleavetype,
  }) {
    return getleavetype?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavetype value)? getleavetype,
    required TResult orElse(),
  }) {
    if (getleavetype != null) {
      return getleavetype(this);
    }
    return orElse();
  }
}

abstract class Getleavetype implements LeaveTypeEvent {
  const factory Getleavetype({required final String token}) = _$Getleavetype;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetleavetypeCopyWith<_$Getleavetype> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaveTypeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<LeaveTypeResponse> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaveTypeStateCopyWith<LeaveTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveTypeStateCopyWith<$Res> {
  factory $LeaveTypeStateCopyWith(
          LeaveTypeState value, $Res Function(LeaveTypeState) then) =
      _$LeaveTypeStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, List<LeaveTypeResponse> response});
}

/// @nodoc
class _$LeaveTypeStateCopyWithImpl<$Res>
    implements $LeaveTypeStateCopyWith<$Res> {
  _$LeaveTypeStateCopyWithImpl(this._value, this._then);

  final LeaveTypeState _value;
  // ignore: unused_field
  final $Res Function(LeaveTypeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? response = freezed,
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
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LeaveTypeResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_LeaveTypeStateCopyWith<$Res>
    implements $LeaveTypeStateCopyWith<$Res> {
  factory _$$_LeaveTypeStateCopyWith(
          _$_LeaveTypeState value, $Res Function(_$_LeaveTypeState) then) =
      __$$_LeaveTypeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, List<LeaveTypeResponse> response});
}

/// @nodoc
class __$$_LeaveTypeStateCopyWithImpl<$Res>
    extends _$LeaveTypeStateCopyWithImpl<$Res>
    implements _$$_LeaveTypeStateCopyWith<$Res> {
  __$$_LeaveTypeStateCopyWithImpl(
      _$_LeaveTypeState _value, $Res Function(_$_LeaveTypeState) _then)
      : super(_value, (v) => _then(v as _$_LeaveTypeState));

  @override
  _$_LeaveTypeState get _value => super._value as _$_LeaveTypeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_LeaveTypeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LeaveTypeResponse>,
    ));
  }
}

/// @nodoc

class _$_LeaveTypeState implements _LeaveTypeState {
  const _$_LeaveTypeState(
      {required this.isLoading,
      required this.isError,
      required final List<LeaveTypeResponse> response})
      : _response = response;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<LeaveTypeResponse> _response;
  @override
  List<LeaveTypeResponse> get response {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LeaveTypeState(isLoading: $isLoading, isError: $isError, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveTypeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveTypeStateCopyWith<_$_LeaveTypeState> get copyWith =>
      __$$_LeaveTypeStateCopyWithImpl<_$_LeaveTypeState>(this, _$identity);
}

abstract class _LeaveTypeState implements LeaveTypeState {
  const factory _LeaveTypeState(
      {required final bool isLoading,
      required final bool isError,
      required final List<LeaveTypeResponse> response}) = _$_LeaveTypeState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<LeaveTypeResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveTypeStateCopyWith<_$_LeaveTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
