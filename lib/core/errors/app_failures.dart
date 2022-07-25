import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';

abstract class Failure {}


@freezed
class AuthFailures with _$AuthFailures implements Failure {
  const factory AuthFailures.noCurrentUser() = NoCurrentUser;
  const factory AuthFailures.networkFailure() = NetworkFailure;
  const factory AuthFailures.incorrectEmailOrPassword() = IncorrectEmailOrPassword;
  const factory AuthFailures.emailAlreadyRegistered() = EmailAlreadyRegistered;
  const factory AuthFailures.canecledByUser() = CanceledByUser;
  const factory AuthFailures.serverError() = ServerError;
  const factory AuthFailures.wrongEmail() = WrongEmail;
}

@freezed
class CashFailures with _$CashFailures implements Failure {
  const factory CashFailures.noDataStored() = NoDataStored;
  const factory CashFailures.getDataFailure() = GetDataFailure;
}