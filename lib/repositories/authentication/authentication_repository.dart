import 'package:authentication_template/data/user_profile.dart';

abstract class AuthenticationRepository {
  Future<UserProfile> signUpWithEmailAndPass({
    required final String email,
    required final String password,
  });
  Future<UserProfile> logIn({
    required final String email,
    required final String password,
  });
  Future<UserProfile> logInWithFacebook(
    void Function() onFacebookAccessGranted,
  );
  Future<UserProfile> logInWithApple(
    void Function() onAppleAccessGranted,
  );
  Future<UserProfile> reload();
  Future<UserProfile> restoreFromStorage();
  Future<void> logOut();
}

class IAuthenticationRepository implements AuthenticationRepository {
  @override
  Future<UserProfile> logIn({required String email, required String password}) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> logInWithApple(void Function() onAppleAccessGranted) {
    // TODO: implement logInWithApple
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> logInWithFacebook(
      void Function() onFacebookAccessGranted) {
    // TODO: implement logInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> reload() {
    // TODO: implement reload
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> restoreFromStorage() {
    // TODO: implement restoreFromStorage
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> signUpWithEmailAndPass(
      {required String email, required String password}) {
    // TODO: implement signUpWithEmailAndPass
    throw UnimplementedError();
  }
}
