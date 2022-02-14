import 'dart:async';

import 'package:async/async.dart';
import 'package:authentication_template/repositories/authentication/authentication_repository.dart';
import 'package:authentication_template/utils/exceptions.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:authentication_template/data/user_profile.dart';

part 'authentication_bloc.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  /// log in event
  const factory AuthenticationEvent.logIn({
    required final String email,
    required final String password,
  }) = _LogIn;

  /// restore from local storage event
  const factory AuthenticationEvent.restore() = _Restore;

  /// sign up with emall/pass event
  const factory AuthenticationEvent.signUp({
    required final String email,
    required final String password,
  }) = _SignUp;

  /// sign up with Facebook event
  const factory AuthenticationEvent.logInWithFacebook() = _LogInWithFacebook;

  /// sign up with Apple event
  const factory AuthenticationEvent.logInWithApple() = _LogInWithApple;

  /// reload user from network event
  const factory AuthenticationEvent.reload() = _ReLoad;

  /// log out event
  const factory AuthenticationEvent.logOut() = _LogOut;
}

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  bool get isAuthenticated => user != null;

  bool get isNotAuthenticated => map(
        error: (_) => false,
        authenticated: (_) => false,
        inProgress: (_) => false,
        notAuthenticated: (_) => true,
        indeterminate: (value) => false,
      );

  // true if authentication bloc was triggered,
  // false state should be user for showing splash screen,
  // instead of weird switching between unauthenticated page to authenticated page
  bool get isLoaded => map<bool>(
        error: (_) => true,
        authenticated: (_) => true,
        inProgress: (_) => true,
        notAuthenticated: (_) => true,
        indeterminate: (value) => false,
      );

  UserProfile? get user => when<UserProfile?>(
        authenticated: (user) => user,
        inProgress: (user) => user,
        notAuthenticated: () => null,
        error: (_) => null,
        indeterminate: () => null,
      );

  bool get isProcessing => map<bool>(
        error: (_) => false,
        authenticated: (_) => false,
        inProgress: (_) => true,
        notAuthenticated: (_) => false,
        indeterminate: (_) => false,
      );

  /// this is init state,
  /// needed to show loading splash screen state,
  /// before user data, will be loaded from storage
  const factory AuthenticationState.indeterminate() =
      _IndeterminateAuthenticationState;

  /// user not authenticated state
  const factory AuthenticationState.notAuthenticated() =
      _NotAuthenticatedAuthenticationState;

  /// in processing
  const factory AuthenticationState.inProgress({
    final UserProfile? user,
  }) = _InProgressAuthenticationState;

  /// user is authenticated state
  const factory AuthenticationState.authenticated({
    required final UserProfile profile,
  }) = _AuthenticatedAuthenticationState;

  /// user is authenticated state
  const factory AuthenticationState.error({
    /// required final AuthorizedProfile authorizedProfile,
    @Default('Authentification failed') final String message,
  }) = _ErrorAuthenticationState;
}

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  CancelableOperation? _lastAuthOperation;
  final AuthenticationRepository _authenticationRepository;
  AuthenticationBloc({
    required final AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(
          const AuthenticationState.indeterminate(),
        ) {
    on<AuthenticationEvent>(
      (event, emitter) => event.map<Future<void>>(
        logIn: (event) => _logIn(event, emitter),
        logInWithFacebook: (event) => _logInWithFacebook(event, emitter),
        logInWithApple: (event) => _logInWithApple(event, emitter),
        signUp: (event) => _signUp(event, emitter),
        reload: (event) => _reload(event, emitter),
        logOut: (event) => _logOut(event, emitter),
        restore: (event) => _restore(event, emitter),
      ),
      transformer: bloc_concurrency.restartable(),
    );
  }

  _logIn(
    _LogIn event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      emitter(const AuthenticationState.inProgress());

      // cancel previous process
      _lastAuthOperation?.cancel();
      // setup log in process
      _lastAuthOperation = CancelableOperation.fromFuture(
        _authenticationRepository.logIn(
          email: event.email,
          password: event.password,
        ),
      );
      // wait response(user profile)
      UserProfile? profile = await _lastAuthOperation?.valueOrCancellation();

      if (profile != null) {
        emitter(
          AuthenticationState.authenticated(profile: profile),
        );
      } else {
        emitter(const AuthenticationState.notAuthenticated());
      }
    } on CustomAppException catch (error) {
      emitter(AuthenticationState.error(message: error.message));
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      String errorMessage = 'Something went wrong';
      if (error is NetworkException) {
        errorMessage = error.message;
      }
      emitter(AuthenticationState.error(message: errorMessage));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _logInWithFacebook(
    _LogInWithFacebook event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      UserProfile profile = await _authenticationRepository.logInWithFacebook(
        () => emitter(
          const AuthenticationState.inProgress(),
        ),
      );

      emitter(
        AuthenticationState.authenticated(profile: profile),
      );
    } on CustomAppException catch (error) {
      if (error.message != 'Canceled') {
        emitter(AuthenticationState.error(message: error.message));
      }
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      String errorMessage = 'Something went wrong';
      if (error is NetworkException) {
        errorMessage = error.message;
      }
      emitter(AuthenticationState.error(message: errorMessage));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _logInWithApple(
    _LogInWithApple event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      UserProfile profile = await _authenticationRepository.logInWithApple(
        () => emitter(
          const AuthenticationState.inProgress(),
        ),
      );

      emitter(
        AuthenticationState.authenticated(profile: profile),
      );
    } on CustomAppException catch (error) {
      if (error.message != 'Canceled') {
        emitter(AuthenticationState.error(message: error.message));
      }
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      String errorMessage = 'Something went wrong';
      if (error is NetworkException) {
        errorMessage = error.message;
      }
      emitter(AuthenticationState.error(message: errorMessage));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _restore(
    _Restore event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      UserProfile profile =
          await _authenticationRepository.restoreFromStorage();

      emitter(
        AuthenticationState.authenticated(profile: profile),
      );
    } on CustomAppException catch (error) {
      if (error.message != 'Not found stored user') {
        emitter(AuthenticationState.error(message: error.message));
      }
      emitter(const AuthenticationState.notAuthenticated());
    } on TimeoutException catch (_) {
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      emitter(const AuthenticationState.error(message: 'Something went wrong'));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _signUp(
    _SignUp event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      emitter(const AuthenticationState.inProgress());

      // cancel previous process
      _lastAuthOperation?.cancel();
      // setup sign up process
      _lastAuthOperation = CancelableOperation.fromFuture(
        _authenticationRepository.signUpWithEmailAndPass(
          email: event.email,
          password: event.password,
        ),
      );
      // wait response(user profile)
      UserProfile? profile = await _lastAuthOperation?.valueOrCancellation();

      if (profile != null) {
        emitter(
          AuthenticationState.authenticated(profile: profile),
        );
      }
    } on CustomAppException catch (error) {
      emitter(AuthenticationState.error(message: error.message));
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      String errorMessage = 'Something went wrong';
      if (error is NetworkException) {
        errorMessage = error.message;
      }
      emitter(AuthenticationState.error(message: errorMessage));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _reload(
    _ReLoad event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      emitter(AuthenticationState.inProgress(user: state.user));

      // cancel previous process
      _lastAuthOperation?.cancel();
      // setup sign up process
      _lastAuthOperation = CancelableOperation.fromFuture(
        _authenticationRepository.reload(),
      );
      // wait response(user profile)
      UserProfile? profile = await _lastAuthOperation?.valueOrCancellation();

      if (profile != null) {
        emitter(
          AuthenticationState.authenticated(profile: profile),
        );
      }
    } on CustomAppException catch (error) {
      emitter(AuthenticationState.error(message: error.message));
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      emitter(const AuthenticationState.error(message: 'Something went wrong'));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }

  _logOut(
    _LogOut event,
    Emitter<AuthenticationState> emitter,
  ) async {
    try {
      if (state.isAuthenticated) {
        emitter(AuthenticationState.inProgress(user: state.user));
        await _authenticationRepository.logOut();
      }
      await _lastAuthOperation?.cancel();

      emitter(
        const AuthenticationState.notAuthenticated(),
      );
    } on CustomAppException catch (error) {
      emitter(AuthenticationState.error(message: error.message));
      emitter(const AuthenticationState.notAuthenticated());
    } catch (error) {
      emitter(const AuthenticationState.error(message: 'Something went wrong'));
      emitter(const AuthenticationState.notAuthenticated());
      rethrow;
    }
  }
}
