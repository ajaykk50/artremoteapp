// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'applyleave_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplyleaveEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavetype,
    required TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)
        submitleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleave value) getleavetype,
    required TResult Function(Submitleave value) submitleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyleaveEventCopyWith<ApplyleaveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyleaveEventCopyWith<$Res> {
  factory $ApplyleaveEventCopyWith(
          ApplyleaveEvent value, $Res Function(ApplyleaveEvent) then) =
      _$ApplyleaveEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$ApplyleaveEventCopyWithImpl<$Res>
    implements $ApplyleaveEventCopyWith<$Res> {
  _$ApplyleaveEventCopyWithImpl(this._value, this._then);

  final ApplyleaveEvent _value;
  // ignore: unused_field
  final $Res Function(ApplyleaveEvent) _then;

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
abstract class _$$GetleaveCopyWith<$Res>
    implements $ApplyleaveEventCopyWith<$Res> {
  factory _$$GetleaveCopyWith(
          _$Getleave value, $Res Function(_$Getleave) then) =
      __$$GetleaveCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetleaveCopyWithImpl<$Res> extends _$ApplyleaveEventCopyWithImpl<$Res>
    implements _$$GetleaveCopyWith<$Res> {
  __$$GetleaveCopyWithImpl(_$Getleave _value, $Res Function(_$Getleave) _then)
      : super(_value, (v) => _then(v as _$Getleave));

  @override
  _$Getleave get _value => super._value as _$Getleave;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Getleave(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getleave implements Getleave {
  const _$Getleave({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'ApplyleaveEvent.getleavetype(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getleave &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetleaveCopyWith<_$Getleave> get copyWith =>
      __$$GetleaveCopyWithImpl<_$Getleave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavetype,
    required TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)
        submitleave,
  }) {
    return getleavetype(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
  }) {
    return getleavetype?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
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
    required TResult Function(Getleave value) getleavetype,
    required TResult Function(Submitleave value) submitleave,
  }) {
    return getleavetype(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
  }) {
    return getleavetype?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
    required TResult orElse(),
  }) {
    if (getleavetype != null) {
      return getleavetype(this);
    }
    return orElse();
  }
}

abstract class Getleave implements ApplyleaveEvent {
  const factory Getleave({required final String token}) = _$Getleave;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetleaveCopyWith<_$Getleave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitleaveCopyWith<$Res>
    implements $ApplyleaveEventCopyWith<$Res> {
  factory _$$SubmitleaveCopyWith(
          _$Submitleave value, $Res Function(_$Submitleave) then) =
      __$$SubmitleaveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String ccMail,
      String comment,
      List<DateTime> dates,
      String leaveType,
      String leaveDuration});
}

/// @nodoc
class __$$SubmitleaveCopyWithImpl<$Res>
    extends _$ApplyleaveEventCopyWithImpl<$Res>
    implements _$$SubmitleaveCopyWith<$Res> {
  __$$SubmitleaveCopyWithImpl(
      _$Submitleave _value, $Res Function(_$Submitleave) _then)
      : super(_value, (v) => _then(v as _$Submitleave));

  @override
  _$Submitleave get _value => super._value as _$Submitleave;

  @override
  $Res call({
    Object? token = freezed,
    Object? ccMail = freezed,
    Object? comment = freezed,
    Object? dates = freezed,
    Object? leaveType = freezed,
    Object? leaveDuration = freezed,
  }) {
    return _then(_$Submitleave(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      ccMail: ccMail == freezed
          ? _value.ccMail
          : ccMail // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      dates: dates == freezed
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      leaveType: leaveType == freezed
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDuration: leaveDuration == freezed
          ? _value.leaveDuration
          : leaveDuration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Submitleave implements Submitleave {
  const _$Submitleave(
      {required this.token,
      required this.ccMail,
      required this.comment,
      required final List<DateTime> dates,
      required this.leaveType,
      required this.leaveDuration})
      : _dates = dates;

  @override
  final String token;
  @override
  final String ccMail;
  @override
  final String comment;
  final List<DateTime> _dates;
  @override
  List<DateTime> get dates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  final String leaveType;
  @override
  final String leaveDuration;

  @override
  String toString() {
    return 'ApplyleaveEvent.submitleave(token: $token, ccMail: $ccMail, comment: $comment, dates: $dates, leaveType: $leaveType, leaveDuration: $leaveDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Submitleave &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.ccMail, ccMail) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other.leaveType, leaveType) &&
            const DeepCollectionEquality()
                .equals(other.leaveDuration, leaveDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(ccMail),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(_dates),
      const DeepCollectionEquality().hash(leaveType),
      const DeepCollectionEquality().hash(leaveDuration));

  @JsonKey(ignore: true)
  @override
  _$$SubmitleaveCopyWith<_$Submitleave> get copyWith =>
      __$$SubmitleaveCopyWithImpl<_$Submitleave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavetype,
    required TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)
        submitleave,
  }) {
    return submitleave(token, ccMail, comment, dates, leaveType, leaveDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
  }) {
    return submitleave?.call(
        token, ccMail, comment, dates, leaveType, leaveDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavetype,
    TResult Function(String token, String ccMail, String comment,
            List<DateTime> dates, String leaveType, String leaveDuration)?
        submitleave,
    required TResult orElse(),
  }) {
    if (submitleave != null) {
      return submitleave(
          token, ccMail, comment, dates, leaveType, leaveDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleave value) getleavetype,
    required TResult Function(Submitleave value) submitleave,
  }) {
    return submitleave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
  }) {
    return submitleave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleave value)? getleavetype,
    TResult Function(Submitleave value)? submitleave,
    required TResult orElse(),
  }) {
    if (submitleave != null) {
      return submitleave(this);
    }
    return orElse();
  }
}

abstract class Submitleave implements ApplyleaveEvent {
  const factory Submitleave(
      {required final String token,
      required final String ccMail,
      required final String comment,
      required final List<DateTime> dates,
      required final String leaveType,
      required final String leaveDuration}) = _$Submitleave;

  @override
  String get token;
  String get ccMail;
  String get comment;
  List<DateTime> get dates;
  String get leaveType;
  String get leaveDuration;
  @override
  @JsonKey(ignore: true)
  _$$SubmitleaveCopyWith<_$Submitleave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplyleaveState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  List<LeaveTypeResponse> get leavetyperesponse =>
      throw _privateConstructorUsedError;
  LeaveApplyReponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyleaveStateCopyWith<ApplyleaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyleaveStateCopyWith<$Res> {
  factory $ApplyleaveStateCopyWith(
          ApplyleaveState value, $Res Function(ApplyleaveState) then) =
      _$ApplyleaveStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<LeaveTypeResponse> leavetyperesponse,
      LeaveApplyReponse? response});
}

/// @nodoc
class _$ApplyleaveStateCopyWithImpl<$Res>
    implements $ApplyleaveStateCopyWith<$Res> {
  _$ApplyleaveStateCopyWithImpl(this._value, this._then);

  final ApplyleaveState _value;
  // ignore: unused_field
  final $Res Function(ApplyleaveState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? leavetyperesponse = freezed,
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
      isAuthError: isAuthError == freezed
          ? _value.isAuthError
          : isAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      leavetyperesponse: leavetyperesponse == freezed
          ? _value.leavetyperesponse
          : leavetyperesponse // ignore: cast_nullable_to_non_nullable
              as List<LeaveTypeResponse>,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LeaveApplyReponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetleaveCopyWith<$Res>
    implements $ApplyleaveStateCopyWith<$Res> {
  factory _$$_GetleaveCopyWith(
          _$_Getleave value, $Res Function(_$_Getleave) then) =
      __$$_GetleaveCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<LeaveTypeResponse> leavetyperesponse,
      LeaveApplyReponse? response});
}

/// @nodoc
class __$$_GetleaveCopyWithImpl<$Res>
    extends _$ApplyleaveStateCopyWithImpl<$Res>
    implements _$$_GetleaveCopyWith<$Res> {
  __$$_GetleaveCopyWithImpl(
      _$_Getleave _value, $Res Function(_$_Getleave) _then)
      : super(_value, (v) => _then(v as _$_Getleave));

  @override
  _$_Getleave get _value => super._value as _$_Getleave;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? leavetyperesponse = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_Getleave(
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
      leavetyperesponse: leavetyperesponse == freezed
          ? _value._leavetyperesponse
          : leavetyperesponse // ignore: cast_nullable_to_non_nullable
              as List<LeaveTypeResponse>,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LeaveApplyReponse?,
    ));
  }
}

/// @nodoc

class _$_Getleave implements _Getleave {
  const _$_Getleave(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required final List<LeaveTypeResponse> leavetyperesponse,
      required this.response})
      : _leavetyperesponse = leavetyperesponse;

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  final List<LeaveTypeResponse> _leavetyperesponse;
  @override
  List<LeaveTypeResponse> get leavetyperesponse {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leavetyperesponse);
  }

  @override
  final LeaveApplyReponse? response;

  @override
  String toString() {
    return 'ApplyleaveState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, leavetyperesponse: $leavetyperesponse, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Getleave &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isServerError, isServerError) &&
            const DeepCollectionEquality()
                .equals(other.isClientError, isClientError) &&
            const DeepCollectionEquality()
                .equals(other.isAuthError, isAuthError) &&
            const DeepCollectionEquality()
                .equals(other._leavetyperesponse, _leavetyperesponse) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isServerError),
      const DeepCollectionEquality().hash(isClientError),
      const DeepCollectionEquality().hash(isAuthError),
      const DeepCollectionEquality().hash(_leavetyperesponse),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_GetleaveCopyWith<_$_Getleave> get copyWith =>
      __$$_GetleaveCopyWithImpl<_$_Getleave>(this, _$identity);
}

abstract class _Getleave implements ApplyleaveState {
  const factory _Getleave(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final List<LeaveTypeResponse> leavetyperesponse,
      required final LeaveApplyReponse? response}) = _$_Getleave;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  List<LeaveTypeResponse> get leavetyperesponse;
  @override
  LeaveApplyReponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_GetleaveCopyWith<_$_Getleave> get copyWith =>
      throw _privateConstructorUsedError;
}
