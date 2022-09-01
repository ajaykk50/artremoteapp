// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'LoginEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements LoginEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$PasswdvisibleCopyWith<$Res> {
  factory _$$PasswdvisibleCopyWith(
          _$Passwdvisible value, $Res Function(_$Passwdvisible) then) =
      __$$PasswdvisibleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswdvisibleCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PasswdvisibleCopyWith<$Res> {
  __$$PasswdvisibleCopyWithImpl(
      _$Passwdvisible _value, $Res Function(_$Passwdvisible) _then)
      : super(_value, (v) => _then(v as _$Passwdvisible));

  @override
  _$Passwdvisible get _value => super._value as _$Passwdvisible;
}

/// @nodoc

class _$Passwdvisible implements Passwdvisible {
  const _$Passwdvisible();

  @override
  String toString() {
    return 'LoginEvent.passwdvisible()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Passwdvisible);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) {
    return passwdvisible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) {
    return passwdvisible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) {
    if (passwdvisible != null) {
      return passwdvisible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) {
    return passwdvisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) {
    return passwdvisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) {
    if (passwdvisible != null) {
      return passwdvisible(this);
    }
    return orElse();
  }
}

abstract class Passwdvisible implements LoginEvent {
  const factory Passwdvisible() = _$Passwdvisible;
}

/// @nodoc
abstract class _$$LoginclickCopyWith<$Res> {
  factory _$$LoginclickCopyWith(
          _$Loginclick value, $Res Function(_$Loginclick) then) =
      __$$LoginclickCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginclickCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginclickCopyWith<$Res> {
  __$$LoginclickCopyWithImpl(
      _$Loginclick _value, $Res Function(_$Loginclick) _then)
      : super(_value, (v) => _then(v as _$Loginclick));

  @override
  _$Loginclick get _value => super._value as _$Loginclick;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$Loginclick(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Loginclick implements Loginclick {
  const _$Loginclick({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginclick(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loginclick &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginclickCopyWith<_$Loginclick> get copyWith =>
      __$$LoginclickCopyWithImpl<_$Loginclick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) {
    return loginclick(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) {
    return loginclick?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) {
    if (loginclick != null) {
      return loginclick(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) {
    return loginclick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) {
    return loginclick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) {
    if (loginclick != null) {
      return loginclick(this);
    }
    return orElse();
  }
}

abstract class Loginclick implements LoginEvent {
  const factory Loginclick(
      {required final String username,
      required final String password}) = _$Loginclick;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginclickCopyWith<_$Loginclick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshKeyCopyWith<$Res> {
  factory _$$RefreshKeyCopyWith(
          _$RefreshKey value, $Res Function(_$RefreshKey) then) =
      __$$RefreshKeyCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class __$$RefreshKeyCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$RefreshKeyCopyWith<$Res> {
  __$$RefreshKeyCopyWithImpl(
      _$RefreshKey _value, $Res Function(_$RefreshKey) _then)
      : super(_value, (v) => _then(v as _$RefreshKey));

  @override
  _$RefreshKey get _value => super._value as _$RefreshKey;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$RefreshKey(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshKey implements RefreshKey {
  const _$RefreshKey({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'LoginEvent.refreshKey(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshKey &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$RefreshKeyCopyWith<_$RefreshKey> get copyWith =>
      __$$RefreshKeyCopyWithImpl<_$RefreshKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) {
    return refreshKey(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) {
    return refreshKey?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) {
    if (refreshKey != null) {
      return refreshKey(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) {
    return refreshKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) {
    return refreshKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) {
    if (refreshKey != null) {
      return refreshKey(this);
    }
    return orElse();
  }
}

abstract class RefreshKey implements LoginEvent {
  const factory RefreshKey({required final String key}) = _$RefreshKey;

  String get key;
  @JsonKey(ignore: true)
  _$$RefreshKeyCopyWith<_$RefreshKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutclickCopyWith<$Res> {
  factory _$$LogoutclickCopyWith(
          _$Logoutclick value, $Res Function(_$Logoutclick) then) =
      __$$LogoutclickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutclickCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LogoutclickCopyWith<$Res> {
  __$$LogoutclickCopyWithImpl(
      _$Logoutclick _value, $Res Function(_$Logoutclick) _then)
      : super(_value, (v) => _then(v as _$Logoutclick));

  @override
  _$Logoutclick get _value => super._value as _$Logoutclick;
}

/// @nodoc

class _$Logoutclick implements Logoutclick {
  const _$Logoutclick();

  @override
  String toString() {
    return 'LoginEvent.logoutclick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logoutclick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() passwdvisible,
    required TResult Function(String username, String password) loginclick,
    required TResult Function(String key) refreshKey,
    required TResult Function() logoutclick,
  }) {
    return logoutclick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
  }) {
    return logoutclick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? passwdvisible,
    TResult Function(String username, String password)? loginclick,
    TResult Function(String key)? refreshKey,
    TResult Function()? logoutclick,
    required TResult orElse(),
  }) {
    if (logoutclick != null) {
      return logoutclick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Passwdvisible value) passwdvisible,
    required TResult Function(Loginclick value) loginclick,
    required TResult Function(RefreshKey value) refreshKey,
    required TResult Function(Logoutclick value) logoutclick,
  }) {
    return logoutclick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
  }) {
    return logoutclick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Passwdvisible value)? passwdvisible,
    TResult Function(Loginclick value)? loginclick,
    TResult Function(RefreshKey value)? refreshKey,
    TResult Function(Logoutclick value)? logoutclick,
    required TResult orElse(),
  }) {
    if (logoutclick != null) {
      return logoutclick(this);
    }
    return orElse();
  }
}

abstract class Logoutclick implements LoginEvent {
  const factory Logoutclick() = _$Logoutclick;
}

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  LoginResponse? get loginresultData => throw _privateConstructorUsedError;
  bool get isLogout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      bool isVisible,
      LoginResponse? loginresultData,
      bool isLogout});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? isVisible = freezed,
    Object? loginresultData = freezed,
    Object? isLogout = freezed,
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
      isAuthError: isAuthError == freezed
          ? _value.isAuthError
          : isAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      loginresultData: loginresultData == freezed
          ? _value.loginresultData
          : loginresultData // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
      isLogout: isLogout == freezed
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      bool isVisible,
      LoginResponse? loginresultData,
      bool isLogout});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? isVisible = freezed,
    Object? loginresultData = freezed,
    Object? isLogout = freezed,
  }) {
    return _then(_$_LoginState(
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
      isAuthError: isAuthError == freezed
          ? _value.isAuthError
          : isAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      loginresultData: loginresultData == freezed
          ? _value.loginresultData
          : loginresultData // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
      isLogout: isLogout == freezed
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required this.isVisible,
      required this.loginresultData,
      required this.isLogout});

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  @override
  final bool isVisible;
  @override
  final LoginResponse? loginresultData;
  @override
  final bool isLogout;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, isVisible: $isVisible, loginresultData: $loginresultData, isLogout: $isLogout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isServerError, isServerError) &&
            const DeepCollectionEquality()
                .equals(other.isClientError, isClientError) &&
            const DeepCollectionEquality()
                .equals(other.isAuthError, isAuthError) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible) &&
            const DeepCollectionEquality()
                .equals(other.loginresultData, loginresultData) &&
            const DeepCollectionEquality().equals(other.isLogout, isLogout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isServerError),
      const DeepCollectionEquality().hash(isClientError),
      const DeepCollectionEquality().hash(isAuthError),
      const DeepCollectionEquality().hash(isVisible),
      const DeepCollectionEquality().hash(loginresultData),
      const DeepCollectionEquality().hash(isLogout));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final bool isVisible,
      required final LoginResponse? loginresultData,
      required final bool isLogout}) = _$_LoginState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  bool get isVisible;
  @override
  LoginResponse? get loginresultData;
  @override
  bool get isLogout;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
