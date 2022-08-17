// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'helpdesk_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HelpdeskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String id) gettopic,
    required TResult Function() fetchimage,
    required TResult Function(String token, String topic_id, String subject,
            String cc, String content, String files)
        sendHelp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettopic value) gettopic,
    required TResult Function(Fetchimage value) fetchimage,
    required TResult Function(SendHelp value) sendHelp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpdeskEventCopyWith<$Res> {
  factory $HelpdeskEventCopyWith(
          HelpdeskEvent value, $Res Function(HelpdeskEvent) then) =
      _$HelpdeskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HelpdeskEventCopyWithImpl<$Res>
    implements $HelpdeskEventCopyWith<$Res> {
  _$HelpdeskEventCopyWithImpl(this._value, this._then);

  final HelpdeskEvent _value;
  // ignore: unused_field
  final $Res Function(HelpdeskEvent) _then;
}

/// @nodoc
abstract class _$$GettopicCopyWith<$Res> {
  factory _$$GettopicCopyWith(
          _$Gettopic value, $Res Function(_$Gettopic) then) =
      __$$GettopicCopyWithImpl<$Res>;
  $Res call({String token, String id});
}

/// @nodoc
class __$$GettopicCopyWithImpl<$Res> extends _$HelpdeskEventCopyWithImpl<$Res>
    implements _$$GettopicCopyWith<$Res> {
  __$$GettopicCopyWithImpl(_$Gettopic _value, $Res Function(_$Gettopic) _then)
      : super(_value, (v) => _then(v as _$Gettopic));

  @override
  _$Gettopic get _value => super._value as _$Gettopic;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
  }) {
    return _then(_$Gettopic(
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

class _$Gettopic implements Gettopic {
  const _$Gettopic({required this.token, required this.id});

  @override
  final String token;
  @override
  final String id;

  @override
  String toString() {
    return 'HelpdeskEvent.gettopic(token: $token, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Gettopic &&
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
  _$$GettopicCopyWith<_$Gettopic> get copyWith =>
      __$$GettopicCopyWithImpl<_$Gettopic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String id) gettopic,
    required TResult Function() fetchimage,
    required TResult Function(String token, String topic_id, String subject,
            String cc, String content, String files)
        sendHelp,
  }) {
    return gettopic(token, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
  }) {
    return gettopic?.call(token, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
    required TResult orElse(),
  }) {
    if (gettopic != null) {
      return gettopic(token, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettopic value) gettopic,
    required TResult Function(Fetchimage value) fetchimage,
    required TResult Function(SendHelp value) sendHelp,
  }) {
    return gettopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
  }) {
    return gettopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
    required TResult orElse(),
  }) {
    if (gettopic != null) {
      return gettopic(this);
    }
    return orElse();
  }
}

abstract class Gettopic implements HelpdeskEvent {
  const factory Gettopic(
      {required final String token, required final String id}) = _$Gettopic;

  String get token;
  String get id;
  @JsonKey(ignore: true)
  _$$GettopicCopyWith<_$Gettopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchimageCopyWith<$Res> {
  factory _$$FetchimageCopyWith(
          _$Fetchimage value, $Res Function(_$Fetchimage) then) =
      __$$FetchimageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchimageCopyWithImpl<$Res> extends _$HelpdeskEventCopyWithImpl<$Res>
    implements _$$FetchimageCopyWith<$Res> {
  __$$FetchimageCopyWithImpl(
      _$Fetchimage _value, $Res Function(_$Fetchimage) _then)
      : super(_value, (v) => _then(v as _$Fetchimage));

  @override
  _$Fetchimage get _value => super._value as _$Fetchimage;
}

/// @nodoc

class _$Fetchimage implements Fetchimage {
  const _$Fetchimage();

  @override
  String toString() {
    return 'HelpdeskEvent.fetchimage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetchimage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String id) gettopic,
    required TResult Function() fetchimage,
    required TResult Function(String token, String topic_id, String subject,
            String cc, String content, String files)
        sendHelp,
  }) {
    return fetchimage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
  }) {
    return fetchimage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
    required TResult orElse(),
  }) {
    if (fetchimage != null) {
      return fetchimage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettopic value) gettopic,
    required TResult Function(Fetchimage value) fetchimage,
    required TResult Function(SendHelp value) sendHelp,
  }) {
    return fetchimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
  }) {
    return fetchimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
    required TResult orElse(),
  }) {
    if (fetchimage != null) {
      return fetchimage(this);
    }
    return orElse();
  }
}

abstract class Fetchimage implements HelpdeskEvent {
  const factory Fetchimage() = _$Fetchimage;
}

/// @nodoc
abstract class _$$SendHelpCopyWith<$Res> {
  factory _$$SendHelpCopyWith(
          _$SendHelp value, $Res Function(_$SendHelp) then) =
      __$$SendHelpCopyWithImpl<$Res>;
  $Res call(
      {String token,
      String topic_id,
      String subject,
      String cc,
      String content,
      String files});
}

/// @nodoc
class __$$SendHelpCopyWithImpl<$Res> extends _$HelpdeskEventCopyWithImpl<$Res>
    implements _$$SendHelpCopyWith<$Res> {
  __$$SendHelpCopyWithImpl(_$SendHelp _value, $Res Function(_$SendHelp) _then)
      : super(_value, (v) => _then(v as _$SendHelp));

  @override
  _$SendHelp get _value => super._value as _$SendHelp;

  @override
  $Res call({
    Object? token = freezed,
    Object? topic_id = freezed,
    Object? subject = freezed,
    Object? cc = freezed,
    Object? content = freezed,
    Object? files = freezed,
  }) {
    return _then(_$SendHelp(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      topic_id: topic_id == freezed
          ? _value.topic_id
          : topic_id // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      cc: cc == freezed
          ? _value.cc
          : cc // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendHelp implements SendHelp {
  const _$SendHelp(
      {required this.token,
      required this.topic_id,
      required this.subject,
      required this.cc,
      required this.content,
      required this.files});

  @override
  final String token;
  @override
  final String topic_id;
  @override
  final String subject;
  @override
  final String cc;
  @override
  final String content;
  @override
  final String files;

  @override
  String toString() {
    return 'HelpdeskEvent.sendHelp(token: $token, topic_id: $topic_id, subject: $subject, cc: $cc, content: $content, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendHelp &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.topic_id, topic_id) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.cc, cc) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.files, files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(topic_id),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(cc),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(files));

  @JsonKey(ignore: true)
  @override
  _$$SendHelpCopyWith<_$SendHelp> get copyWith =>
      __$$SendHelpCopyWithImpl<_$SendHelp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String id) gettopic,
    required TResult Function() fetchimage,
    required TResult Function(String token, String topic_id, String subject,
            String cc, String content, String files)
        sendHelp,
  }) {
    return sendHelp(token, topic_id, subject, cc, content, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
  }) {
    return sendHelp?.call(token, topic_id, subject, cc, content, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String id)? gettopic,
    TResult Function()? fetchimage,
    TResult Function(String token, String topic_id, String subject, String cc,
            String content, String files)?
        sendHelp,
    required TResult orElse(),
  }) {
    if (sendHelp != null) {
      return sendHelp(token, topic_id, subject, cc, content, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gettopic value) gettopic,
    required TResult Function(Fetchimage value) fetchimage,
    required TResult Function(SendHelp value) sendHelp,
  }) {
    return sendHelp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
  }) {
    return sendHelp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gettopic value)? gettopic,
    TResult Function(Fetchimage value)? fetchimage,
    TResult Function(SendHelp value)? sendHelp,
    required TResult orElse(),
  }) {
    if (sendHelp != null) {
      return sendHelp(this);
    }
    return orElse();
  }
}

abstract class SendHelp implements HelpdeskEvent {
  const factory SendHelp(
      {required final String token,
      required final String topic_id,
      required final String subject,
      required final String cc,
      required final String content,
      required final String files}) = _$SendHelp;

  String get token;
  String get topic_id;
  String get subject;
  String get cc;
  String get content;
  String get files;
  @JsonKey(ignore: true)
  _$$SendHelpCopyWith<_$SendHelp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HelpdeskState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<TopicResponse>? get topicresponse => throw _privateConstructorUsedError;
  XFile? get filepath => throw _privateConstructorUsedError;
  TopicResponse? get helpresponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelpdeskStateCopyWith<HelpdeskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpdeskStateCopyWith<$Res> {
  factory $HelpdeskStateCopyWith(
          HelpdeskState value, $Res Function(HelpdeskState) then) =
      _$HelpdeskStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      List<TopicResponse>? topicresponse,
      XFile? filepath,
      TopicResponse? helpresponse});
}

/// @nodoc
class _$HelpdeskStateCopyWithImpl<$Res>
    implements $HelpdeskStateCopyWith<$Res> {
  _$HelpdeskStateCopyWithImpl(this._value, this._then);

  final HelpdeskState _value;
  // ignore: unused_field
  final $Res Function(HelpdeskState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? topicresponse = freezed,
    Object? filepath = freezed,
    Object? helpresponse = freezed,
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
      topicresponse: topicresponse == freezed
          ? _value.topicresponse
          : topicresponse // ignore: cast_nullable_to_non_nullable
              as List<TopicResponse>?,
      filepath: filepath == freezed
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as XFile?,
      helpresponse: helpresponse == freezed
          ? _value.helpresponse
          : helpresponse // ignore: cast_nullable_to_non_nullable
              as TopicResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_HelpdeskStateCopyWith<$Res>
    implements $HelpdeskStateCopyWith<$Res> {
  factory _$$_HelpdeskStateCopyWith(
          _$_HelpdeskState value, $Res Function(_$_HelpdeskState) then) =
      __$$_HelpdeskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      List<TopicResponse>? topicresponse,
      XFile? filepath,
      TopicResponse? helpresponse});
}

/// @nodoc
class __$$_HelpdeskStateCopyWithImpl<$Res>
    extends _$HelpdeskStateCopyWithImpl<$Res>
    implements _$$_HelpdeskStateCopyWith<$Res> {
  __$$_HelpdeskStateCopyWithImpl(
      _$_HelpdeskState _value, $Res Function(_$_HelpdeskState) _then)
      : super(_value, (v) => _then(v as _$_HelpdeskState));

  @override
  _$_HelpdeskState get _value => super._value as _$_HelpdeskState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? topicresponse = freezed,
    Object? filepath = freezed,
    Object? helpresponse = freezed,
  }) {
    return _then(_$_HelpdeskState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      topicresponse: topicresponse == freezed
          ? _value._topicresponse
          : topicresponse // ignore: cast_nullable_to_non_nullable
              as List<TopicResponse>?,
      filepath: filepath == freezed
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as XFile?,
      helpresponse: helpresponse == freezed
          ? _value.helpresponse
          : helpresponse // ignore: cast_nullable_to_non_nullable
              as TopicResponse?,
    ));
  }
}

/// @nodoc

class _$_HelpdeskState implements _HelpdeskState {
  const _$_HelpdeskState(
      {required this.isLoading,
      required this.isError,
      required final List<TopicResponse>? topicresponse,
      required this.filepath,
      required this.helpresponse})
      : _topicresponse = topicresponse;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<TopicResponse>? _topicresponse;
  @override
  List<TopicResponse>? get topicresponse {
    final value = _topicresponse;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final XFile? filepath;
  @override
  final TopicResponse? helpresponse;

  @override
  String toString() {
    return 'HelpdeskState(isLoading: $isLoading, isError: $isError, topicresponse: $topicresponse, filepath: $filepath, helpresponse: $helpresponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelpdeskState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other._topicresponse, _topicresponse) &&
            const DeepCollectionEquality().equals(other.filepath, filepath) &&
            const DeepCollectionEquality()
                .equals(other.helpresponse, helpresponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(_topicresponse),
      const DeepCollectionEquality().hash(filepath),
      const DeepCollectionEquality().hash(helpresponse));

  @JsonKey(ignore: true)
  @override
  _$$_HelpdeskStateCopyWith<_$_HelpdeskState> get copyWith =>
      __$$_HelpdeskStateCopyWithImpl<_$_HelpdeskState>(this, _$identity);
}

abstract class _HelpdeskState implements HelpdeskState {
  const factory _HelpdeskState(
      {required final bool isLoading,
      required final bool isError,
      required final List<TopicResponse>? topicresponse,
      required final XFile? filepath,
      required final TopicResponse? helpresponse}) = _$_HelpdeskState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<TopicResponse>? get topicresponse;
  @override
  XFile? get filepath;
  @override
  TopicResponse? get helpresponse;
  @override
  @JsonKey(ignore: true)
  _$$_HelpdeskStateCopyWith<_$_HelpdeskState> get copyWith =>
      throw _privateConstructorUsedError;
}
