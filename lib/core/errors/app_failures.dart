import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';

abstract class Failure {}


@freezed
class AuthFailures with _$AuthFailures implements Failure {
  const factory AuthFailures.networkFailure() = _NetworkFailure;
  const factory AuthFailures.incorrectEmailOrPassword() = _IncorrectEmailOrPassword;
  const factory AuthFailures.emailAlreadyRegistered() = _EmailAlreadyRegistered;
  const factory AuthFailures.canecledByUser() = _CanceledByUser;
  const factory AuthFailures.serverError() = _AuthServerError;
  const factory AuthFailures.wrongEmail() = _WrongEmail;
}

@freezed
class CashFailures with _$CashFailures implements Failure {
  const factory CashFailures.noDataStored() = _NoDataStored;
  const factory CashFailures.getDataFailure() = _GetDataFailure;
}

@freezed
class CurrentUserFailures with _$CurrentUserFailures implements Failure{
  const factory CurrentUserFailures.noCurrentUser() = _NocurrentUser;
  const factory CurrentUserFailures.unverifiedEmail() = _UnverifiedEmail;
  const factory CurrentUserFailures.cashError() = _CashError;
  const factory CurrentUserFailures.serverError() = _CurrentUserServerError;
  const factory CurrentUserFailures.uncompletedAccount() = _UncompletedAccount;
 
}