// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _LogIn logIn({required String email, required String password}) {
    return _LogIn(
      email: email,
      password: password,
    );
  }

  _Restore restore() {
    return const _Restore();
  }

  _SignUp signUp({required String email, required String password}) {
    return _SignUp(
      email: email,
      password: password,
    );
  }

  _LogInWithFacebook logInWithFacebook() {
    return const _LogInWithFacebook();
  }

  _LogInWithApple logInWithApple() {
    return const _LogInWithApple();
  }

  _ReLoad reload() {
    return const _ReLoad();
  }

  _LogOut logOut() {
    return const _LogOut();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$LogInCopyWith<$Res> {
  factory _$LogInCopyWith(_LogIn value, $Res Function(_LogIn) then) =
      __$LogInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$LogInCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogInCopyWith<$Res> {
  __$LogInCopyWithImpl(_LogIn _value, $Res Function(_LogIn) _then)
      : super(_value, (v) => _then(v as _LogIn));

  @override
  _LogIn get _value => super._value as _LogIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LogIn(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogIn extends _LogIn {
  const _$_LogIn({required this.email, required this.password}) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LogInCopyWith<_LogIn> get copyWith =>
      __$LogInCopyWithImpl<_LogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn extends AuthenticationEvent {
  const factory _LogIn({required String email, required String password}) =
      _$_LogIn;
  const _LogIn._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$LogInCopyWith<_LogIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RestoreCopyWith<$Res> {
  factory _$RestoreCopyWith(_Restore value, $Res Function(_Restore) then) =
      __$RestoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$RestoreCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$RestoreCopyWith<$Res> {
  __$RestoreCopyWithImpl(_Restore _value, $Res Function(_Restore) _then)
      : super(_value, (v) => _then(v as _Restore));

  @override
  _Restore get _value => super._value as _Restore;
}

/// @nodoc

class _$_Restore extends _Restore {
  const _$_Restore() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.restore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Restore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _Restore extends AuthenticationEvent {
  const factory _Restore() = _$_Restore;
  const _Restore._() : super._();
}

/// @nodoc
abstract class _$SignUpCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) then) =
      __$SignUpCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$SignUpCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(_SignUp _value, $Res Function(_SignUp) _then)
      : super(_value, (v) => _then(v as _SignUp));

  @override
  _SignUp get _value => super._value as _SignUp;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUp(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUp extends _SignUp {
  const _$_SignUp({required this.email, required this.password}) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUp &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignUpCopyWith<_SignUp> get copyWith =>
      __$SignUpCopyWithImpl<_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return signUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp extends AuthenticationEvent {
  const factory _SignUp({required String email, required String password}) =
      _$_SignUp;
  const _SignUp._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$SignUpCopyWith<_SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogInWithFacebookCopyWith<$Res> {
  factory _$LogInWithFacebookCopyWith(
          _LogInWithFacebook value, $Res Function(_LogInWithFacebook) then) =
      __$LogInWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogInWithFacebookCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogInWithFacebookCopyWith<$Res> {
  __$LogInWithFacebookCopyWithImpl(
      _LogInWithFacebook _value, $Res Function(_LogInWithFacebook) _then)
      : super(_value, (v) => _then(v as _LogInWithFacebook));

  @override
  _LogInWithFacebook get _value => super._value as _LogInWithFacebook;
}

/// @nodoc

class _$_LogInWithFacebook extends _LogInWithFacebook {
  const _$_LogInWithFacebook() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logInWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogInWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return logInWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return logInWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInWithFacebook != null) {
      return logInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return logInWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logInWithFacebook != null) {
      return logInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _LogInWithFacebook extends AuthenticationEvent {
  const factory _LogInWithFacebook() = _$_LogInWithFacebook;
  const _LogInWithFacebook._() : super._();
}

/// @nodoc
abstract class _$LogInWithAppleCopyWith<$Res> {
  factory _$LogInWithAppleCopyWith(
          _LogInWithApple value, $Res Function(_LogInWithApple) then) =
      __$LogInWithAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogInWithAppleCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogInWithAppleCopyWith<$Res> {
  __$LogInWithAppleCopyWithImpl(
      _LogInWithApple _value, $Res Function(_LogInWithApple) _then)
      : super(_value, (v) => _then(v as _LogInWithApple));

  @override
  _LogInWithApple get _value => super._value as _LogInWithApple;
}

/// @nodoc

class _$_LogInWithApple extends _LogInWithApple {
  const _$_LogInWithApple() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logInWithApple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogInWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return logInWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return logInWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInWithApple != null) {
      return logInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return logInWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logInWithApple != null) {
      return logInWithApple(this);
    }
    return orElse();
  }
}

abstract class _LogInWithApple extends AuthenticationEvent {
  const factory _LogInWithApple() = _$_LogInWithApple;
  const _LogInWithApple._() : super._();
}

/// @nodoc
abstract class _$ReLoadCopyWith<$Res> {
  factory _$ReLoadCopyWith(_ReLoad value, $Res Function(_ReLoad) then) =
      __$ReLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReLoadCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$ReLoadCopyWith<$Res> {
  __$ReLoadCopyWithImpl(_ReLoad _value, $Res Function(_ReLoad) _then)
      : super(_value, (v) => _then(v as _ReLoad));

  @override
  _ReLoad get _value => super._value as _ReLoad;
}

/// @nodoc

class _$_ReLoad extends _ReLoad {
  const _$_ReLoad() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _ReLoad extends AuthenticationEvent {
  const factory _ReLoad() = _$_ReLoad;
  const _ReLoad._() : super._();
}

/// @nodoc
abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) =
      __$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then)
      : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

/// @nodoc

class _$_LogOut extends _LogOut {
  const _$_LogOut() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
    required TResult Function() restore,
    required TResult Function(String email, String password) signUp,
    required TResult Function() logInWithFacebook,
    required TResult Function() logInWithApple,
    required TResult Function() reload,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    TResult Function()? restore,
    TResult Function(String email, String password)? signUp,
    TResult Function()? logInWithFacebook,
    TResult Function()? logInWithApple,
    TResult Function()? reload,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_Restore value) restore,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogInWithFacebook value) logInWithFacebook,
    required TResult Function(_LogInWithApple value) logInWithApple,
    required TResult Function(_ReLoad value) reload,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_Restore value)? restore,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogInWithFacebook value)? logInWithFacebook,
    TResult Function(_LogInWithApple value)? logInWithApple,
    TResult Function(_ReLoad value)? reload,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut extends AuthenticationEvent {
  const factory _LogOut() = _$_LogOut;
  const _LogOut._() : super._();
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _IndeterminateAuthenticationState indeterminate() {
    return const _IndeterminateAuthenticationState();
  }

  _NotAuthenticatedAuthenticationState notAuthenticated() {
    return const _NotAuthenticatedAuthenticationState();
  }

  _InProgressAuthenticationState inProgress({UserProfile? user}) {
    return _InProgressAuthenticationState(
      user: user,
    );
  }

  _AuthenticatedAuthenticationState authenticated(
      {required UserProfile profile}) {
    return _AuthenticatedAuthenticationState(
      profile: profile,
    );
  }

  _ErrorAuthenticationState error(
      {String message = 'Authentification failed'}) {
    return _ErrorAuthenticationState(
      message: message,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$IndeterminateAuthenticationStateCopyWith<$Res> {
  factory _$IndeterminateAuthenticationStateCopyWith(
          _IndeterminateAuthenticationState value,
          $Res Function(_IndeterminateAuthenticationState) then) =
      __$IndeterminateAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$IndeterminateAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IndeterminateAuthenticationStateCopyWith<$Res> {
  __$IndeterminateAuthenticationStateCopyWithImpl(
      _IndeterminateAuthenticationState _value,
      $Res Function(_IndeterminateAuthenticationState) _then)
      : super(_value, (v) => _then(v as _IndeterminateAuthenticationState));

  @override
  _IndeterminateAuthenticationState get _value =>
      super._value as _IndeterminateAuthenticationState;
}

/// @nodoc

class _$_IndeterminateAuthenticationState
    extends _IndeterminateAuthenticationState {
  const _$_IndeterminateAuthenticationState() : super._();

  @override
  String toString() {
    return 'AuthenticationState.indeterminate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndeterminateAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) {
    return indeterminate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) {
    return indeterminate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (indeterminate != null) {
      return indeterminate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) {
    return indeterminate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) {
    return indeterminate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (indeterminate != null) {
      return indeterminate(this);
    }
    return orElse();
  }
}

abstract class _IndeterminateAuthenticationState extends AuthenticationState {
  const factory _IndeterminateAuthenticationState() =
      _$_IndeterminateAuthenticationState;
  const _IndeterminateAuthenticationState._() : super._();
}

/// @nodoc
abstract class _$NotAuthenticatedAuthenticationStateCopyWith<$Res> {
  factory _$NotAuthenticatedAuthenticationStateCopyWith(
          _NotAuthenticatedAuthenticationState value,
          $Res Function(_NotAuthenticatedAuthenticationState) then) =
      __$NotAuthenticatedAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotAuthenticatedAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$NotAuthenticatedAuthenticationStateCopyWith<$Res> {
  __$NotAuthenticatedAuthenticationStateCopyWithImpl(
      _NotAuthenticatedAuthenticationState _value,
      $Res Function(_NotAuthenticatedAuthenticationState) _then)
      : super(_value, (v) => _then(v as _NotAuthenticatedAuthenticationState));

  @override
  _NotAuthenticatedAuthenticationState get _value =>
      super._value as _NotAuthenticatedAuthenticationState;
}

/// @nodoc

class _$_NotAuthenticatedAuthenticationState
    extends _NotAuthenticatedAuthenticationState {
  const _$_NotAuthenticatedAuthenticationState() : super._();

  @override
  String toString() {
    return 'AuthenticationState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotAuthenticatedAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticatedAuthenticationState
    extends AuthenticationState {
  const factory _NotAuthenticatedAuthenticationState() =
      _$_NotAuthenticatedAuthenticationState;
  const _NotAuthenticatedAuthenticationState._() : super._();
}

/// @nodoc
abstract class _$InProgressAuthenticationStateCopyWith<$Res> {
  factory _$InProgressAuthenticationStateCopyWith(
          _InProgressAuthenticationState value,
          $Res Function(_InProgressAuthenticationState) then) =
      __$InProgressAuthenticationStateCopyWithImpl<$Res>;
  $Res call({UserProfile? user});
}

/// @nodoc
class __$InProgressAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InProgressAuthenticationStateCopyWith<$Res> {
  __$InProgressAuthenticationStateCopyWithImpl(
      _InProgressAuthenticationState _value,
      $Res Function(_InProgressAuthenticationState) _then)
      : super(_value, (v) => _then(v as _InProgressAuthenticationState));

  @override
  _InProgressAuthenticationState get _value =>
      super._value as _InProgressAuthenticationState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_InProgressAuthenticationState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc

class _$_InProgressAuthenticationState extends _InProgressAuthenticationState {
  const _$_InProgressAuthenticationState({this.user}) : super._();

  @override
  final UserProfile? user;

  @override
  String toString() {
    return 'AuthenticationState.inProgress(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InProgressAuthenticationState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$InProgressAuthenticationStateCopyWith<_InProgressAuthenticationState>
      get copyWith => __$InProgressAuthenticationStateCopyWithImpl<
          _InProgressAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) {
    return inProgress(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) {
    return inProgress?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressAuthenticationState extends AuthenticationState {
  const factory _InProgressAuthenticationState({UserProfile? user}) =
      _$_InProgressAuthenticationState;
  const _InProgressAuthenticationState._() : super._();

  UserProfile? get user;
  @JsonKey(ignore: true)
  _$InProgressAuthenticationStateCopyWith<_InProgressAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticatedAuthenticationStateCopyWith<$Res> {
  factory _$AuthenticatedAuthenticationStateCopyWith(
          _AuthenticatedAuthenticationState value,
          $Res Function(_AuthenticatedAuthenticationState) then) =
      __$AuthenticatedAuthenticationStateCopyWithImpl<$Res>;
  $Res call({UserProfile profile});
}

/// @nodoc
class __$AuthenticatedAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedAuthenticationStateCopyWith<$Res> {
  __$AuthenticatedAuthenticationStateCopyWithImpl(
      _AuthenticatedAuthenticationState _value,
      $Res Function(_AuthenticatedAuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticatedAuthenticationState));

  @override
  _AuthenticatedAuthenticationState get _value =>
      super._value as _AuthenticatedAuthenticationState;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_AuthenticatedAuthenticationState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedAuthenticationState
    extends _AuthenticatedAuthenticationState {
  const _$_AuthenticatedAuthenticationState({required this.profile})
      : super._();

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatedAuthenticationState &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedAuthenticationStateCopyWith<_AuthenticatedAuthenticationState>
      get copyWith => __$AuthenticatedAuthenticationStateCopyWithImpl<
          _AuthenticatedAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) {
    return authenticated(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) {
    return authenticated?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAuthenticationState extends AuthenticationState {
  const factory _AuthenticatedAuthenticationState(
      {required UserProfile profile}) = _$_AuthenticatedAuthenticationState;
  const _AuthenticatedAuthenticationState._() : super._();

  UserProfile get profile;
  @JsonKey(ignore: true)
  _$AuthenticatedAuthenticationStateCopyWith<_AuthenticatedAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorAuthenticationStateCopyWith<$Res> {
  factory _$ErrorAuthenticationStateCopyWith(_ErrorAuthenticationState value,
          $Res Function(_ErrorAuthenticationState) then) =
      __$ErrorAuthenticationStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$ErrorAuthenticationStateCopyWith<$Res> {
  __$ErrorAuthenticationStateCopyWithImpl(_ErrorAuthenticationState _value,
      $Res Function(_ErrorAuthenticationState) _then)
      : super(_value, (v) => _then(v as _ErrorAuthenticationState));

  @override
  _ErrorAuthenticationState get _value =>
      super._value as _ErrorAuthenticationState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorAuthenticationState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAuthenticationState extends _ErrorAuthenticationState {
  const _$_ErrorAuthenticationState({this.message = 'Authentification failed'})
      : super._();

  @JsonKey()
  @override

  /// required final AuthorizedProfile authorizedProfile,
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorAuthenticationState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorAuthenticationStateCopyWith<_ErrorAuthenticationState> get copyWith =>
      __$ErrorAuthenticationStateCopyWithImpl<_ErrorAuthenticationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() indeterminate,
    required TResult Function() notAuthenticated,
    required TResult Function(UserProfile? user) inProgress,
    required TResult Function(UserProfile profile) authenticated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? indeterminate,
    TResult Function()? notAuthenticated,
    TResult Function(UserProfile? user)? inProgress,
    TResult Function(UserProfile profile)? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndeterminateAuthenticationState value)
        indeterminate,
    required TResult Function(_NotAuthenticatedAuthenticationState value)
        notAuthenticated,
    required TResult Function(_InProgressAuthenticationState value) inProgress,
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(_ErrorAuthenticationState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndeterminateAuthenticationState value)? indeterminate,
    TResult Function(_NotAuthenticatedAuthenticationState value)?
        notAuthenticated,
    TResult Function(_InProgressAuthenticationState value)? inProgress,
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(_ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthenticationState extends AuthenticationState {
  const factory _ErrorAuthenticationState({String message}) =
      _$_ErrorAuthenticationState;
  const _ErrorAuthenticationState._() : super._();

  /// required final AuthorizedProfile authorizedProfile,
  String get message;
  @JsonKey(ignore: true)
  _$ErrorAuthenticationStateCopyWith<_ErrorAuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
