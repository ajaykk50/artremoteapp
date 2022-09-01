// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res> implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  final MainFailure _value;
  // ignore: unused_field
  final $Res Function(MainFailure) _then;
}

/// @nodoc
abstract class _$$ClientFailureCopyWith<$Res> {
  factory _$$ClientFailureCopyWith(
          _$ClientFailure value, $Res Function(_$ClientFailure) then) =
      __$$ClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res>
    implements _$$ClientFailureCopyWith<$Res> {
  __$$ClientFailureCopyWithImpl(
      _$ClientFailure _value, $Res Function(_$ClientFailure) _then)
      : super(_value, (v) => _then(v as _$ClientFailure));

  @override
  _$ClientFailure get _value => super._value as _$ClientFailure;
}

/// @nodoc

class _$ClientFailure implements ClientFailure {
  const _$ClientFailure();

  @override
  String toString() {
    return 'MainFailure.clientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() authFailure,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class ClientFailure implements MainFailure {
  const factory ClientFailure() = _$ClientFailure;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'MainFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() authFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements MainFailure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class _$$AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureCopyWith(
          _$AuthFailure value, $Res Function(_$AuthFailure) then) =
      __$$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFailureCopyWithImpl<$Res> extends _$MainFailureCopyWithImpl<$Res>
    implements _$$AuthFailureCopyWith<$Res> {
  __$$AuthFailureCopyWithImpl(
      _$AuthFailure _value, $Res Function(_$AuthFailure) _then)
      : super(_value, (v) => _then(v as _$AuthFailure));

  @override
  _$AuthFailure get _value => super._value as _$AuthFailure;
}

/// @nodoc

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure();

  @override
  String toString() {
    return 'MainFailure.authFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() authFailure,
  }) {
    return authFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
  }) {
    return authFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements MainFailure {
  const factory AuthFailure() = _$AuthFailure;
}
