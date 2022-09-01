// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getprofile,
    required TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)
        updateprofile,
    required TResult Function(
            String token, String currentpasswd, String newpasswd)
        changepasswd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getprofile value) getprofile,
    required TResult Function(Updateprofile value) updateprofile,
    required TResult Function(Changepasswd value) changepasswd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;

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
abstract class _$$GetprofileCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$GetprofileCopyWith(
          _$Getprofile value, $Res Function(_$Getprofile) then) =
      __$$GetprofileCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetprofileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$GetprofileCopyWith<$Res> {
  __$$GetprofileCopyWithImpl(
      _$Getprofile _value, $Res Function(_$Getprofile) _then)
      : super(_value, (v) => _then(v as _$Getprofile));

  @override
  _$Getprofile get _value => super._value as _$Getprofile;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Getprofile(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getprofile implements Getprofile {
  const _$Getprofile({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'ProfileEvent.getprofile(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getprofile &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetprofileCopyWith<_$Getprofile> get copyWith =>
      __$$GetprofileCopyWithImpl<_$Getprofile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getprofile,
    required TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)
        updateprofile,
    required TResult Function(
            String token, String currentpasswd, String newpasswd)
        changepasswd,
  }) {
    return getprofile(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
  }) {
    return getprofile?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
    required TResult orElse(),
  }) {
    if (getprofile != null) {
      return getprofile(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getprofile value) getprofile,
    required TResult Function(Updateprofile value) updateprofile,
    required TResult Function(Changepasswd value) changepasswd,
  }) {
    return getprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
  }) {
    return getprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
    required TResult orElse(),
  }) {
    if (getprofile != null) {
      return getprofile(this);
    }
    return orElse();
  }
}

abstract class Getprofile implements ProfileEvent {
  const factory Getprofile({required final String token}) = _$Getprofile;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetprofileCopyWith<_$Getprofile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateprofileCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$UpdateprofileCopyWith(
          _$Updateprofile value, $Res Function(_$Updateprofile) then) =
      __$$UpdateprofileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String mobile,
      String workemail,
      String othemail,
      String emergencyno});
}

/// @nodoc
class __$$UpdateprofileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$UpdateprofileCopyWith<$Res> {
  __$$UpdateprofileCopyWithImpl(
      _$Updateprofile _value, $Res Function(_$Updateprofile) _then)
      : super(_value, (v) => _then(v as _$Updateprofile));

  @override
  _$Updateprofile get _value => super._value as _$Updateprofile;

  @override
  $Res call({
    Object? token = freezed,
    Object? mobile = freezed,
    Object? workemail = freezed,
    Object? othemail = freezed,
    Object? emergencyno = freezed,
  }) {
    return _then(_$Updateprofile(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      workemail: workemail == freezed
          ? _value.workemail
          : workemail // ignore: cast_nullable_to_non_nullable
              as String,
      othemail: othemail == freezed
          ? _value.othemail
          : othemail // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyno: emergencyno == freezed
          ? _value.emergencyno
          : emergencyno // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Updateprofile implements Updateprofile {
  const _$Updateprofile(
      {required this.token,
      required this.mobile,
      required this.workemail,
      required this.othemail,
      required this.emergencyno});

  @override
  final String token;
  @override
  final String mobile;
  @override
  final String workemail;
  @override
  final String othemail;
  @override
  final String emergencyno;

  @override
  String toString() {
    return 'ProfileEvent.updateprofile(token: $token, mobile: $mobile, workemail: $workemail, othemail: $othemail, emergencyno: $emergencyno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Updateprofile &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.workemail, workemail) &&
            const DeepCollectionEquality().equals(other.othemail, othemail) &&
            const DeepCollectionEquality()
                .equals(other.emergencyno, emergencyno));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(workemail),
      const DeepCollectionEquality().hash(othemail),
      const DeepCollectionEquality().hash(emergencyno));

  @JsonKey(ignore: true)
  @override
  _$$UpdateprofileCopyWith<_$Updateprofile> get copyWith =>
      __$$UpdateprofileCopyWithImpl<_$Updateprofile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getprofile,
    required TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)
        updateprofile,
    required TResult Function(
            String token, String currentpasswd, String newpasswd)
        changepasswd,
  }) {
    return updateprofile(token, mobile, workemail, othemail, emergencyno);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
  }) {
    return updateprofile?.call(token, mobile, workemail, othemail, emergencyno);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
    required TResult orElse(),
  }) {
    if (updateprofile != null) {
      return updateprofile(token, mobile, workemail, othemail, emergencyno);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getprofile value) getprofile,
    required TResult Function(Updateprofile value) updateprofile,
    required TResult Function(Changepasswd value) changepasswd,
  }) {
    return updateprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
  }) {
    return updateprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
    required TResult orElse(),
  }) {
    if (updateprofile != null) {
      return updateprofile(this);
    }
    return orElse();
  }
}

abstract class Updateprofile implements ProfileEvent {
  const factory Updateprofile(
      {required final String token,
      required final String mobile,
      required final String workemail,
      required final String othemail,
      required final String emergencyno}) = _$Updateprofile;

  @override
  String get token;
  String get mobile;
  String get workemail;
  String get othemail;
  String get emergencyno;
  @override
  @JsonKey(ignore: true)
  _$$UpdateprofileCopyWith<_$Updateprofile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangepasswdCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$ChangepasswdCopyWith(
          _$Changepasswd value, $Res Function(_$Changepasswd) then) =
      __$$ChangepasswdCopyWithImpl<$Res>;
  @override
  $Res call({String token, String currentpasswd, String newpasswd});
}

/// @nodoc
class __$$ChangepasswdCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ChangepasswdCopyWith<$Res> {
  __$$ChangepasswdCopyWithImpl(
      _$Changepasswd _value, $Res Function(_$Changepasswd) _then)
      : super(_value, (v) => _then(v as _$Changepasswd));

  @override
  _$Changepasswd get _value => super._value as _$Changepasswd;

  @override
  $Res call({
    Object? token = freezed,
    Object? currentpasswd = freezed,
    Object? newpasswd = freezed,
  }) {
    return _then(_$Changepasswd(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      currentpasswd: currentpasswd == freezed
          ? _value.currentpasswd
          : currentpasswd // ignore: cast_nullable_to_non_nullable
              as String,
      newpasswd: newpasswd == freezed
          ? _value.newpasswd
          : newpasswd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Changepasswd implements Changepasswd {
  const _$Changepasswd(
      {required this.token,
      required this.currentpasswd,
      required this.newpasswd});

  @override
  final String token;
  @override
  final String currentpasswd;
  @override
  final String newpasswd;

  @override
  String toString() {
    return 'ProfileEvent.changepasswd(token: $token, currentpasswd: $currentpasswd, newpasswd: $newpasswd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Changepasswd &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.currentpasswd, currentpasswd) &&
            const DeepCollectionEquality().equals(other.newpasswd, newpasswd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(currentpasswd),
      const DeepCollectionEquality().hash(newpasswd));

  @JsonKey(ignore: true)
  @override
  _$$ChangepasswdCopyWith<_$Changepasswd> get copyWith =>
      __$$ChangepasswdCopyWithImpl<_$Changepasswd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getprofile,
    required TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)
        updateprofile,
    required TResult Function(
            String token, String currentpasswd, String newpasswd)
        changepasswd,
  }) {
    return changepasswd(token, currentpasswd, newpasswd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
  }) {
    return changepasswd?.call(token, currentpasswd, newpasswd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getprofile,
    TResult Function(String token, String mobile, String workemail,
            String othemail, String emergencyno)?
        updateprofile,
    TResult Function(String token, String currentpasswd, String newpasswd)?
        changepasswd,
    required TResult orElse(),
  }) {
    if (changepasswd != null) {
      return changepasswd(token, currentpasswd, newpasswd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getprofile value) getprofile,
    required TResult Function(Updateprofile value) updateprofile,
    required TResult Function(Changepasswd value) changepasswd,
  }) {
    return changepasswd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
  }) {
    return changepasswd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getprofile value)? getprofile,
    TResult Function(Updateprofile value)? updateprofile,
    TResult Function(Changepasswd value)? changepasswd,
    required TResult orElse(),
  }) {
    if (changepasswd != null) {
      return changepasswd(this);
    }
    return orElse();
  }
}

abstract class Changepasswd implements ProfileEvent {
  const factory Changepasswd(
      {required final String token,
      required final String currentpasswd,
      required final String newpasswd}) = _$Changepasswd;

  @override
  String get token;
  String get currentpasswd;
  String get newpasswd;
  @override
  @JsonKey(ignore: true)
  _$$ChangepasswdCopyWith<_$Changepasswd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  ProfileResponse? get response => throw _privateConstructorUsedError;
  ProfileResponse? get updateresp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      ProfileResponse? response,
      ProfileResponse? updateresp});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? response = freezed,
    Object? updateresp = freezed,
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
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      updateresp: updateresp == freezed
          ? _value.updateresp
          : updateresp // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      ProfileResponse? response,
      ProfileResponse? updateresp});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? response = freezed,
    Object? updateresp = freezed,
  }) {
    return _then(_$_ProfileState(
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
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      updateresp: updateresp == freezed
          ? _value.updateresp
          : updateresp // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required this.response,
      required this.updateresp});

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  @override
  final ProfileResponse? response;
  @override
  final ProfileResponse? updateresp;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, response: $response, updateresp: $updateresp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isServerError, isServerError) &&
            const DeepCollectionEquality()
                .equals(other.isClientError, isClientError) &&
            const DeepCollectionEquality()
                .equals(other.isAuthError, isAuthError) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality()
                .equals(other.updateresp, updateresp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isServerError),
      const DeepCollectionEquality().hash(isClientError),
      const DeepCollectionEquality().hash(isAuthError),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(updateresp));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final ProfileResponse? response,
      required final ProfileResponse? updateresp}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  ProfileResponse? get response;
  @override
  ProfileResponse? get updateresp;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
