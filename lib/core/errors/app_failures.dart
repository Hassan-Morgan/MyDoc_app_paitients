import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';

abstract class Failure {}

@freezed
class AuthFailures with _$AuthFailures implements Failure {
  const  factory  AuthFailures.canecledByUser() = CanceledByUser;
}

@freezed
class CashFailures with _$CashFailures implements Failure {
 const  factory CashFailures.noDataStored() = NoDataStored;
 const  factory CashFailures.getDataFailure() = GetDataFailure;
}
