part of 'verify_email_cubit.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.initial() = _Initial;
  const factory VerifyEmailState.loding() = _Loding;
  const factory VerifyEmailState.success() = _Success;
  const factory VerifyEmailState.error(AuthFailures failure) = _Error;
}
