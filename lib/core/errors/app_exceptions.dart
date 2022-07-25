import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class CashExceptions with _$CashExceptions {
  const factory CashExceptions.noDataException() = NoDataException;
  const factory CashExceptions.unImplementedException() =
      UnImplementedException;
}

@freezed
class AuthExceptions with _$AuthExceptions {
  const factory AuthExceptions.noCurrentUser() = NocurrentUser;
  const factory AuthExceptions.serverException() = ServerException;
  const factory AuthExceptions.incorrectEmailOrPassword() = IncorrectEmailOrPassword;
  const factory AuthExceptions.emailAlreadyRegistered() = EmailAlreadyRegistered;
  const factory AuthExceptions.canceledByUser() = CanceledByUser;
  const factory AuthExceptions.wrongEmail() = wrongEmail;
}
