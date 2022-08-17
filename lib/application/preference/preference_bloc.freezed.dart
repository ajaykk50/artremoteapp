// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prefdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prefdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prefdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Prefdata value) prefdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Prefdata value)? prefdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Prefdata value)? prefdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceEventCopyWith<$Res> {
  factory $PreferenceEventCopyWith(
          PreferenceEvent value, $Res Function(PreferenceEvent) then) =
      _$PreferenceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreferenceEventCopyWithImpl<$Res>
    implements $PreferenceEventCopyWith<$Res> {
  _$PreferenceEventCopyWithImpl(this._value, this._then);

  final PreferenceEvent _value;
  // ignore: unused_field
  final $Res Function(PreferenceEvent) _then;
}

/// @nodoc
abstract class _$$PrefdataCopyWith<$Res> {
  factory _$$PrefdataCopyWith(
          _$Prefdata value, $Res Function(_$Prefdata) then) =
      __$$PrefdataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrefdataCopyWithImpl<$Res> extends _$PreferenceEventCopyWithImpl<$Res>
    implements _$$PrefdataCopyWith<$Res> {
  __$$PrefdataCopyWithImpl(_$Prefdata _value, $Res Function(_$Prefdata) _then)
      : super(_value, (v) => _then(v as _$Prefdata));

  @override
  _$Prefdata get _value => super._value as _$Prefdata;
}

/// @nodoc

class _$Prefdata implements Prefdata {
  const _$Prefdata();

  @override
  String toString() {
    return 'PreferenceEvent.prefdata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Prefdata);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prefdata,
  }) {
    return prefdata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prefdata,
  }) {
    return prefdata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prefdata,
    required TResult orElse(),
  }) {
    if (prefdata != null) {
      return prefdata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Prefdata value) prefdata,
  }) {
    return prefdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Prefdata value)? prefdata,
  }) {
    return prefdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Prefdata value)? prefdata,
    required TResult orElse(),
  }) {
    if (prefdata != null) {
      return prefdata(this);
    }
    return orElse();
  }
}

abstract class Prefdata implements PreferenceEvent {
  const factory Prefdata() = _$Prefdata;
}

/// @nodoc
mixin _$PreferenceState {
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferenceStateCopyWith<PreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceStateCopyWith<$Res> {
  factory $PreferenceStateCopyWith(
          PreferenceState value, $Res Function(PreferenceState) then) =
      _$PreferenceStateCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$PreferenceStateCopyWithImpl<$Res>
    implements $PreferenceStateCopyWith<$Res> {
  _$PreferenceStateCopyWithImpl(this._value, this._then);

  final PreferenceState _value;
  // ignore: unused_field
  final $Res Function(PreferenceState) _then;

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
abstract class _$$_PreferenceStateCopyWith<$Res>
    implements $PreferenceStateCopyWith<$Res> {
  factory _$$_PreferenceStateCopyWith(
          _$_PreferenceState value, $Res Function(_$_PreferenceState) then) =
      __$$_PreferenceStateCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$_PreferenceStateCopyWithImpl<$Res>
    extends _$PreferenceStateCopyWithImpl<$Res>
    implements _$$_PreferenceStateCopyWith<$Res> {
  __$$_PreferenceStateCopyWithImpl(
      _$_PreferenceState _value, $Res Function(_$_PreferenceState) _then)
      : super(_value, (v) => _then(v as _$_PreferenceState));

  @override
  _$_PreferenceState get _value => super._value as _$_PreferenceState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_PreferenceState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PreferenceState implements _PreferenceState {
  const _$_PreferenceState({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'PreferenceState(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferenceState &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_PreferenceStateCopyWith<_$_PreferenceState> get copyWith =>
      __$$_PreferenceStateCopyWithImpl<_$_PreferenceState>(this, _$identity);
}

abstract class _PreferenceState implements PreferenceState {
  const factory _PreferenceState({required final String token}) =
      _$_PreferenceState;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_PreferenceStateCopyWith<_$_PreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}
