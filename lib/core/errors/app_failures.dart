import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';

abstract class Failure {}

@freezed
class AuthFailures with _$AuthFailures implements Failure {
  factory AuthFailures.canecledByUser() = CanceledByUser;
}
