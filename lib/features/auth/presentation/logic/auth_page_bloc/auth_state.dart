part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Option<Either<AuthFailures, Unit>> authSuccessOrFailure,
    required String email,
    required String password,
    required bool isLoading,
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool obsecurePassword,
    required AuthPagesEnum authPage,
  }) = _AuthStates;
  factory AuthState.initial() => AuthState(
        email: '',
        password: '',
        authPage: AuthPagesEnum.signInPage,
        authSuccessOrFailure: none(),
        isEmailValid: false,
        isPasswordValid: false,
        obsecurePassword: true,
        isLoading: false,
      );
}
