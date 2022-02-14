

abstract class ResentEmailRepo {
  Future<void> sendEmail();
}

/* class ResentConfirmEmailRepo implements ResentEmailRepo {
  final ApiService _api;
  ResentConfirmEmailRepo(ApiService api) : _api = api;
  @override
  Future<void> sendEmail() async {
    await _api.authorization.userResendEmailVerification();
  }
}

class ResentResetPasswordEmailRepo implements ResentEmailRepo {
  final ApiService _api;
  final String _email;
  ResentResetPasswordEmailRepo({
    required final ApiService api,
    required final String email,
  })  : _api = api,
        _email = email;
  @override
  Future<void> sendEmail() async {
    await _api.passwordForgot(_email);
  }
}
 */