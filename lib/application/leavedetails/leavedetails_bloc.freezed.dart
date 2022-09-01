// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leavedetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeavedetailsEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavecount,
    required TResult Function(String token, String fromdate, String todate)
        getleavedetails,
    required TResult Function(String token, String id) deleteleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavecount value) getleavecount,
    required TResult Function(Getleavedetails value) getleavedetails,
    required TResult Function(Deleteleave value) deleteleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeavedetailsEventCopyWith<LeavedetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavedetailsEventCopyWith<$Res> {
  factory $LeavedetailsEventCopyWith(
          LeavedetailsEvent value, $Res Function(LeavedetailsEvent) then) =
      _$LeavedetailsEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$LeavedetailsEventCopyWithImpl<$Res>
    implements $LeavedetailsEventCopyWith<$Res> {
  _$LeavedetailsEventCopyWithImpl(this._value, this._then);

  final LeavedetailsEvent _value;
  // ignore: unused_field
  final $Res Function(LeavedetailsEvent) _then;

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
abstract class _$$GetleavecountCopyWith<$Res>
    implements $LeavedetailsEventCopyWith<$Res> {
  factory _$$GetleavecountCopyWith(
          _$Getleavecount value, $Res Function(_$Getleavecount) then) =
      __$$GetleavecountCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetleavecountCopyWithImpl<$Res>
    extends _$LeavedetailsEventCopyWithImpl<$Res>
    implements _$$GetleavecountCopyWith<$Res> {
  __$$GetleavecountCopyWithImpl(
      _$Getleavecount _value, $Res Function(_$Getleavecount) _then)
      : super(_value, (v) => _then(v as _$Getleavecount));

  @override
  _$Getleavecount get _value => super._value as _$Getleavecount;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Getleavecount(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getleavecount implements Getleavecount {
  const _$Getleavecount({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LeavedetailsEvent.getleavecount(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getleavecount &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetleavecountCopyWith<_$Getleavecount> get copyWith =>
      __$$GetleavecountCopyWithImpl<_$Getleavecount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavecount,
    required TResult Function(String token, String fromdate, String todate)
        getleavedetails,
    required TResult Function(String token, String id) deleteleave,
  }) {
    return getleavecount(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
  }) {
    return getleavecount?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
    required TResult orElse(),
  }) {
    if (getleavecount != null) {
      return getleavecount(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavecount value) getleavecount,
    required TResult Function(Getleavedetails value) getleavedetails,
    required TResult Function(Deleteleave value) deleteleave,
  }) {
    return getleavecount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
  }) {
    return getleavecount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
    required TResult orElse(),
  }) {
    if (getleavecount != null) {
      return getleavecount(this);
    }
    return orElse();
  }
}

abstract class Getleavecount implements LeavedetailsEvent {
  const factory Getleavecount({required final String token}) = _$Getleavecount;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetleavecountCopyWith<_$Getleavecount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetleavedetailsCopyWith<$Res>
    implements $LeavedetailsEventCopyWith<$Res> {
  factory _$$GetleavedetailsCopyWith(
          _$Getleavedetails value, $Res Function(_$Getleavedetails) then) =
      __$$GetleavedetailsCopyWithImpl<$Res>;
  @override
  $Res call({String token, String fromdate, String todate});
}

/// @nodoc
class __$$GetleavedetailsCopyWithImpl<$Res>
    extends _$LeavedetailsEventCopyWithImpl<$Res>
    implements _$$GetleavedetailsCopyWith<$Res> {
  __$$GetleavedetailsCopyWithImpl(
      _$Getleavedetails _value, $Res Function(_$Getleavedetails) _then)
      : super(_value, (v) => _then(v as _$Getleavedetails));

  @override
  _$Getleavedetails get _value => super._value as _$Getleavedetails;

  @override
  $Res call({
    Object? token = freezed,
    Object? fromdate = freezed,
    Object? todate = freezed,
  }) {
    return _then(_$Getleavedetails(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      fromdate: fromdate == freezed
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as String,
      todate: todate == freezed
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getleavedetails implements Getleavedetails {
  const _$Getleavedetails(
      {required this.token, required this.fromdate, required this.todate});

  @override
  final String token;
  @override
  final String fromdate;
  @override
  final String todate;

  @override
  String toString() {
    return 'LeavedetailsEvent.getleavedetails(token: $token, fromdate: $fromdate, todate: $todate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getleavedetails &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.fromdate, fromdate) &&
            const DeepCollectionEquality().equals(other.todate, todate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(fromdate),
      const DeepCollectionEquality().hash(todate));

  @JsonKey(ignore: true)
  @override
  _$$GetleavedetailsCopyWith<_$Getleavedetails> get copyWith =>
      __$$GetleavedetailsCopyWithImpl<_$Getleavedetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavecount,
    required TResult Function(String token, String fromdate, String todate)
        getleavedetails,
    required TResult Function(String token, String id) deleteleave,
  }) {
    return getleavedetails(token, fromdate, todate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
  }) {
    return getleavedetails?.call(token, fromdate, todate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
    required TResult orElse(),
  }) {
    if (getleavedetails != null) {
      return getleavedetails(token, fromdate, todate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavecount value) getleavecount,
    required TResult Function(Getleavedetails value) getleavedetails,
    required TResult Function(Deleteleave value) deleteleave,
  }) {
    return getleavedetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
  }) {
    return getleavedetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
    required TResult orElse(),
  }) {
    if (getleavedetails != null) {
      return getleavedetails(this);
    }
    return orElse();
  }
}

abstract class Getleavedetails implements LeavedetailsEvent {
  const factory Getleavedetails(
      {required final String token,
      required final String fromdate,
      required final String todate}) = _$Getleavedetails;

  @override
  String get token;
  String get fromdate;
  String get todate;
  @override
  @JsonKey(ignore: true)
  _$$GetleavedetailsCopyWith<_$Getleavedetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteleaveCopyWith<$Res>
    implements $LeavedetailsEventCopyWith<$Res> {
  factory _$$DeleteleaveCopyWith(
          _$Deleteleave value, $Res Function(_$Deleteleave) then) =
      __$$DeleteleaveCopyWithImpl<$Res>;
  @override
  $Res call({String token, String id});
}

/// @nodoc
class __$$DeleteleaveCopyWithImpl<$Res>
    extends _$LeavedetailsEventCopyWithImpl<$Res>
    implements _$$DeleteleaveCopyWith<$Res> {
  __$$DeleteleaveCopyWithImpl(
      _$Deleteleave _value, $Res Function(_$Deleteleave) _then)
      : super(_value, (v) => _then(v as _$Deleteleave));

  @override
  _$Deleteleave get _value => super._value as _$Deleteleave;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
  }) {
    return _then(_$Deleteleave(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Deleteleave implements Deleteleave {
  const _$Deleteleave({required this.token, required this.id});

  @override
  final String token;
  @override
  final String id;

  @override
  String toString() {
    return 'LeavedetailsEvent.deleteleave(token: $token, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleteleave &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$DeleteleaveCopyWith<_$Deleteleave> get copyWith =>
      __$$DeleteleaveCopyWithImpl<_$Deleteleave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getleavecount,
    required TResult Function(String token, String fromdate, String todate)
        getleavedetails,
    required TResult Function(String token, String id) deleteleave,
  }) {
    return deleteleave(token, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
  }) {
    return deleteleave?.call(token, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getleavecount,
    TResult Function(String token, String fromdate, String todate)?
        getleavedetails,
    TResult Function(String token, String id)? deleteleave,
    required TResult orElse(),
  }) {
    if (deleteleave != null) {
      return deleteleave(token, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getleavecount value) getleavecount,
    required TResult Function(Getleavedetails value) getleavedetails,
    required TResult Function(Deleteleave value) deleteleave,
  }) {
    return deleteleave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
  }) {
    return deleteleave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getleavecount value)? getleavecount,
    TResult Function(Getleavedetails value)? getleavedetails,
    TResult Function(Deleteleave value)? deleteleave,
    required TResult orElse(),
  }) {
    if (deleteleave != null) {
      return deleteleave(this);
    }
    return orElse();
  }
}

abstract class Deleteleave implements LeavedetailsEvent {
  const factory Deleteleave(
      {required final String token, required final String id}) = _$Deleteleave;

  @override
  String get token;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteleaveCopyWith<_$Deleteleave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeavedetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isServerError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isAuthError => throw _privateConstructorUsedError;
  List<LeavecountResponse> get countresp => throw _privateConstructorUsedError;
  LeavedetailsResponse? get detailsresp => throw _privateConstructorUsedError;
  LeavecountResponse? get removeresp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeavedetailsStateCopyWith<LeavedetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavedetailsStateCopyWith<$Res> {
  factory $LeavedetailsStateCopyWith(
          LeavedetailsState value, $Res Function(LeavedetailsState) then) =
      _$LeavedetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<LeavecountResponse> countresp,
      LeavedetailsResponse? detailsresp,
      LeavecountResponse? removeresp});
}

/// @nodoc
class _$LeavedetailsStateCopyWithImpl<$Res>
    implements $LeavedetailsStateCopyWith<$Res> {
  _$LeavedetailsStateCopyWithImpl(this._value, this._then);

  final LeavedetailsState _value;
  // ignore: unused_field
  final $Res Function(LeavedetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? countresp = freezed,
    Object? detailsresp = freezed,
    Object? removeresp = freezed,
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
      countresp: countresp == freezed
          ? _value.countresp
          : countresp // ignore: cast_nullable_to_non_nullable
              as List<LeavecountResponse>,
      detailsresp: detailsresp == freezed
          ? _value.detailsresp
          : detailsresp // ignore: cast_nullable_to_non_nullable
              as LeavedetailsResponse?,
      removeresp: removeresp == freezed
          ? _value.removeresp
          : removeresp // ignore: cast_nullable_to_non_nullable
              as LeavecountResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_LeavedetailsStateCopyWith<$Res>
    implements $LeavedetailsStateCopyWith<$Res> {
  factory _$$_LeavedetailsStateCopyWith(_$_LeavedetailsState value,
          $Res Function(_$_LeavedetailsState) then) =
      __$$_LeavedetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isServerError,
      bool isClientError,
      bool isAuthError,
      List<LeavecountResponse> countresp,
      LeavedetailsResponse? detailsresp,
      LeavecountResponse? removeresp});
}

/// @nodoc
class __$$_LeavedetailsStateCopyWithImpl<$Res>
    extends _$LeavedetailsStateCopyWithImpl<$Res>
    implements _$$_LeavedetailsStateCopyWith<$Res> {
  __$$_LeavedetailsStateCopyWithImpl(
      _$_LeavedetailsState _value, $Res Function(_$_LeavedetailsState) _then)
      : super(_value, (v) => _then(v as _$_LeavedetailsState));

  @override
  _$_LeavedetailsState get _value => super._value as _$_LeavedetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isServerError = freezed,
    Object? isClientError = freezed,
    Object? isAuthError = freezed,
    Object? countresp = freezed,
    Object? detailsresp = freezed,
    Object? removeresp = freezed,
  }) {
    return _then(_$_LeavedetailsState(
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
      countresp: countresp == freezed
          ? _value._countresp
          : countresp // ignore: cast_nullable_to_non_nullable
              as List<LeavecountResponse>,
      detailsresp: detailsresp == freezed
          ? _value.detailsresp
          : detailsresp // ignore: cast_nullable_to_non_nullable
              as LeavedetailsResponse?,
      removeresp: removeresp == freezed
          ? _value.removeresp
          : removeresp // ignore: cast_nullable_to_non_nullable
              as LeavecountResponse?,
    ));
  }
}

/// @nodoc

class _$_LeavedetailsState implements _LeavedetailsState {
  const _$_LeavedetailsState(
      {required this.isLoading,
      required this.isServerError,
      required this.isClientError,
      required this.isAuthError,
      required final List<LeavecountResponse> countresp,
      required this.detailsresp,
      required this.removeresp})
      : _countresp = countresp;

  @override
  final bool isLoading;
  @override
  final bool isServerError;
  @override
  final bool isClientError;
  @override
  final bool isAuthError;
  final List<LeavecountResponse> _countresp;
  @override
  List<LeavecountResponse> get countresp {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countresp);
  }

  @override
  final LeavedetailsResponse? detailsresp;
  @override
  final LeavecountResponse? removeresp;

  @override
  String toString() {
    return 'LeavedetailsState(isLoading: $isLoading, isServerError: $isServerError, isClientError: $isClientError, isAuthError: $isAuthError, countresp: $countresp, detailsresp: $detailsresp, removeresp: $removeresp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeavedetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isServerError, isServerError) &&
            const DeepCollectionEquality()
                .equals(other.isClientError, isClientError) &&
            const DeepCollectionEquality()
                .equals(other.isAuthError, isAuthError) &&
            const DeepCollectionEquality()
                .equals(other._countresp, _countresp) &&
            const DeepCollectionEquality()
                .equals(other.detailsresp, detailsresp) &&
            const DeepCollectionEquality()
                .equals(other.removeresp, removeresp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isServerError),
      const DeepCollectionEquality().hash(isClientError),
      const DeepCollectionEquality().hash(isAuthError),
      const DeepCollectionEquality().hash(_countresp),
      const DeepCollectionEquality().hash(detailsresp),
      const DeepCollectionEquality().hash(removeresp));

  @JsonKey(ignore: true)
  @override
  _$$_LeavedetailsStateCopyWith<_$_LeavedetailsState> get copyWith =>
      __$$_LeavedetailsStateCopyWithImpl<_$_LeavedetailsState>(
          this, _$identity);
}

abstract class _LeavedetailsState implements LeavedetailsState {
  const factory _LeavedetailsState(
      {required final bool isLoading,
      required final bool isServerError,
      required final bool isClientError,
      required final bool isAuthError,
      required final List<LeavecountResponse> countresp,
      required final LeavedetailsResponse? detailsresp,
      required final LeavecountResponse? removeresp}) = _$_LeavedetailsState;

  @override
  bool get isLoading;
  @override
  bool get isServerError;
  @override
  bool get isClientError;
  @override
  bool get isAuthError;
  @override
  List<LeavecountResponse> get countresp;
  @override
  LeavedetailsResponse? get detailsresp;
  @override
  LeavecountResponse? get removeresp;
  @override
  @JsonKey(ignore: true)
  _$$_LeavedetailsStateCopyWith<_$_LeavedetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
