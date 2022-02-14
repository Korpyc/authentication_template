// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resent_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResentEmailEventTearOff {
  const _$ResentEmailEventTearOff();

  _SendEmail sendEmail() {
    return const _SendEmail();
  }
}

/// @nodoc
const $ResentEmailEvent = _$ResentEmailEventTearOff();

/// @nodoc
mixin _$ResentEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEmail value) sendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendEmail value)? sendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEmail value)? sendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResentEmailEventCopyWith<$Res> {
  factory $ResentEmailEventCopyWith(
          ResentEmailEvent value, $Res Function(ResentEmailEvent) then) =
      _$ResentEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResentEmailEventCopyWithImpl<$Res>
    implements $ResentEmailEventCopyWith<$Res> {
  _$ResentEmailEventCopyWithImpl(this._value, this._then);

  final ResentEmailEvent _value;
  // ignore: unused_field
  final $Res Function(ResentEmailEvent) _then;
}

/// @nodoc
abstract class _$SendEmailCopyWith<$Res> {
  factory _$SendEmailCopyWith(
          _SendEmail value, $Res Function(_SendEmail) then) =
      __$SendEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendEmailCopyWithImpl<$Res>
    extends _$ResentEmailEventCopyWithImpl<$Res>
    implements _$SendEmailCopyWith<$Res> {
  __$SendEmailCopyWithImpl(_SendEmail _value, $Res Function(_SendEmail) _then)
      : super(_value, (v) => _then(v as _SendEmail));

  @override
  _SendEmail get _value => super._value as _SendEmail;
}

/// @nodoc

class _$_SendEmail extends _SendEmail with DiagnosticableTreeMixin {
  const _$_SendEmail() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResentEmailEvent.sendEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResentEmailEvent.sendEmail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmail,
  }) {
    return sendEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmail,
  }) {
    return sendEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmail,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEmail value) sendEmail,
  }) {
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendEmail value)? sendEmail,
  }) {
    return sendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEmail value)? sendEmail,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class _SendEmail extends ResentEmailEvent {
  const factory _SendEmail() = _$_SendEmail;
  const _SendEmail._() : super._();
}

/// @nodoc
class _$ResentEmailStateTearOff {
  const _$ResentEmailStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _EmailWasSent emailWasSent() {
    return const _EmailWasSent();
  }

  _WaitTill waitTill({required int secondsToEnd}) {
    return _WaitTill(
      secondsToEnd: secondsToEnd,
    );
  }
}

/// @nodoc
const $ResentEmailState = _$ResentEmailStateTearOff();

/// @nodoc
mixin _$ResentEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailWasSent,
    required TResult Function(int secondsToEnd) waitTill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EmailWasSent value) emailWasSent,
    required TResult Function(_WaitTill value) waitTill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResentEmailStateCopyWith<$Res> {
  factory $ResentEmailStateCopyWith(
          ResentEmailState value, $Res Function(ResentEmailState) then) =
      _$ResentEmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResentEmailStateCopyWithImpl<$Res>
    implements $ResentEmailStateCopyWith<$Res> {
  _$ResentEmailStateCopyWithImpl(this._value, this._then);

  final ResentEmailState _value;
  // ignore: unused_field
  final $Res Function(ResentEmailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ResentEmailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial with DiagnosticableTreeMixin {
  const _$_Initial() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResentEmailState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResentEmailState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailWasSent,
    required TResult Function(int secondsToEnd) waitTill,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EmailWasSent value) emailWasSent,
    required TResult Function(_WaitTill value) waitTill,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ResentEmailState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ResentEmailStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading with DiagnosticableTreeMixin {
  const _$_Loading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResentEmailState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResentEmailState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailWasSent,
    required TResult Function(int secondsToEnd) waitTill,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EmailWasSent value) emailWasSent,
    required TResult Function(_WaitTill value) waitTill,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ResentEmailState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$EmailWasSentCopyWith<$Res> {
  factory _$EmailWasSentCopyWith(
          _EmailWasSent value, $Res Function(_EmailWasSent) then) =
      __$EmailWasSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailWasSentCopyWithImpl<$Res>
    extends _$ResentEmailStateCopyWithImpl<$Res>
    implements _$EmailWasSentCopyWith<$Res> {
  __$EmailWasSentCopyWithImpl(
      _EmailWasSent _value, $Res Function(_EmailWasSent) _then)
      : super(_value, (v) => _then(v as _EmailWasSent));

  @override
  _EmailWasSent get _value => super._value as _EmailWasSent;
}

/// @nodoc

class _$_EmailWasSent extends _EmailWasSent with DiagnosticableTreeMixin {
  const _$_EmailWasSent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResentEmailState.emailWasSent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResentEmailState.emailWasSent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailWasSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailWasSent,
    required TResult Function(int secondsToEnd) waitTill,
  }) {
    return emailWasSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
  }) {
    return emailWasSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
    required TResult orElse(),
  }) {
    if (emailWasSent != null) {
      return emailWasSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EmailWasSent value) emailWasSent,
    required TResult Function(_WaitTill value) waitTill,
  }) {
    return emailWasSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
  }) {
    return emailWasSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
    required TResult orElse(),
  }) {
    if (emailWasSent != null) {
      return emailWasSent(this);
    }
    return orElse();
  }
}

abstract class _EmailWasSent extends ResentEmailState {
  const factory _EmailWasSent() = _$_EmailWasSent;
  const _EmailWasSent._() : super._();
}

/// @nodoc
abstract class _$WaitTillCopyWith<$Res> {
  factory _$WaitTillCopyWith(_WaitTill value, $Res Function(_WaitTill) then) =
      __$WaitTillCopyWithImpl<$Res>;
  $Res call({int secondsToEnd});
}

/// @nodoc
class __$WaitTillCopyWithImpl<$Res> extends _$ResentEmailStateCopyWithImpl<$Res>
    implements _$WaitTillCopyWith<$Res> {
  __$WaitTillCopyWithImpl(_WaitTill _value, $Res Function(_WaitTill) _then)
      : super(_value, (v) => _then(v as _WaitTill));

  @override
  _WaitTill get _value => super._value as _WaitTill;

  @override
  $Res call({
    Object? secondsToEnd = freezed,
  }) {
    return _then(_WaitTill(
      secondsToEnd: secondsToEnd == freezed
          ? _value.secondsToEnd
          : secondsToEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WaitTill extends _WaitTill with DiagnosticableTreeMixin {
  const _$_WaitTill({required this.secondsToEnd}) : super._();

  @override
  final int secondsToEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResentEmailState.waitTill(secondsToEnd: $secondsToEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResentEmailState.waitTill'))
      ..add(DiagnosticsProperty('secondsToEnd', secondsToEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaitTill &&
            const DeepCollectionEquality()
                .equals(other.secondsToEnd, secondsToEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(secondsToEnd));

  @JsonKey(ignore: true)
  @override
  _$WaitTillCopyWith<_WaitTill> get copyWith =>
      __$WaitTillCopyWithImpl<_WaitTill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailWasSent,
    required TResult Function(int secondsToEnd) waitTill,
  }) {
    return waitTill(secondsToEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
  }) {
    return waitTill?.call(secondsToEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailWasSent,
    TResult Function(int secondsToEnd)? waitTill,
    required TResult orElse(),
  }) {
    if (waitTill != null) {
      return waitTill(secondsToEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EmailWasSent value) emailWasSent,
    required TResult Function(_WaitTill value) waitTill,
  }) {
    return waitTill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
  }) {
    return waitTill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EmailWasSent value)? emailWasSent,
    TResult Function(_WaitTill value)? waitTill,
    required TResult orElse(),
  }) {
    if (waitTill != null) {
      return waitTill(this);
    }
    return orElse();
  }
}

abstract class _WaitTill extends ResentEmailState {
  const factory _WaitTill({required int secondsToEnd}) = _$_WaitTill;
  const _WaitTill._() : super._();

  int get secondsToEnd;
  @JsonKey(ignore: true)
  _$WaitTillCopyWith<_WaitTill> get copyWith =>
      throw _privateConstructorUsedError;
}
