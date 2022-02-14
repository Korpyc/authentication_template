import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:authentication_template/repositories/resend_email_repo/resend_email_repo.dart';

part 'resent_email_bloc.freezed.dart';

@freezed
class ResentEmailEvent with _$ResentEmailEvent {
  const ResentEmailEvent._();

  const factory ResentEmailEvent.sendEmail() = _SendEmail;
}

@freezed
class ResentEmailState with _$ResentEmailState {
  const ResentEmailState._();

  bool get isStarted => map(
        initial: (_) => false,
        loading: (_) => true,
        emailWasSent: (_) => true,
        waitTill: (_) => true,
      );

  int? get secondsToEnd => map(
        initial: (_) => null,
        loading: (_) => null,
        emailWasSent: (_) => null,
        waitTill: (event) => event.secondsToEnd,
      );

  const factory ResentEmailState.initial() = _Initial;
  const factory ResentEmailState.loading() = _Loading;
  const factory ResentEmailState.emailWasSent() = _EmailWasSent;
  const factory ResentEmailState.waitTill({
    required final int secondsToEnd,
  }) = _WaitTill;
}

class ResentEmailBloc extends Bloc<ResentEmailEvent, ResentEmailState> {
  final int _timeOut;
  final ResentEmailRepo _repo;
  ResentEmailBloc({
    required final int timeOut,
    required final ResentEmailRepo repo,
  })  : _timeOut = timeOut,
        _repo = repo,
        super(const ResentEmailState.initial()) {
    on<ResentEmailEvent>(
      (event, emit) => event.map<Future<void>>(
        sendEmail: _sendEmail(emit),
      ),
    );
  }
  _sendEmail(Emitter<ResentEmailState> emit) async {
    emit(const ResentEmailState.loading());
    try {
      await _repo.sendEmail();
      emit(const ResentEmailState.emailWasSent());
    } catch (error) {
      emit(const ResentEmailState.initial());
      rethrow;
    }

    for (int secondsToEnd = _timeOut; secondsToEnd > 0; secondsToEnd--) {
      emit(ResentEmailState.waitTill(secondsToEnd: secondsToEnd));
      await Future.delayed(const Duration(seconds: 1));
    }
    emit(const ResentEmailState.loading());
  }
}
