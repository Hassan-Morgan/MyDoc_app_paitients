import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class CashExceptions with _$CashExceptions {
  const factory CashExceptions.noDataException() = _NoDataException;
  const factory CashExceptions.unImplementedException() =
      _UnImplementedException;
}

@freezed
class AuthExceptions with _$AuthExceptions {
  const factory AuthExceptions.serverException() = _AuthServerException;
  const factory AuthExceptions.incorrectEmailOrPassword() = _IncorrectEmailOrPassword;
  const factory AuthExceptions.emailAlreadyRegistered() = _EmailAlreadyRegistered;
  const factory AuthExceptions.canceledByUser() = _CanceledByUser;
  const factory AuthExceptions.wrongEmail() = _wrongEmail;
}

@freezed
class CurrentUserException with _$CurrentUserException {
  const factory CurrentUserException.noCurrentUser() = _NocurrentUser;
  const factory CurrentUserException.unverifiedEmail() = _UnverifiedEmail;
  const factory CurrentUserException.cashError() = _CashError;
  const factory CurrentUserException.serverError() = _CurrentUserServerError;
  const factory CurrentUserException.uncompletedAccount() = _UncompletedAccount;
 
}
