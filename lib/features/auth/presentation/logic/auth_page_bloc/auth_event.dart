part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.changePasswordVisiblity() = _ChangePasswordVisiblity;
  const factory AuthEvent.emailFieldChanged(String email) = _EmailFieldChanged;
  const factory AuthEvent.passwordFieldChanged(String password) =
      _PasswordFieldChanged;
  const factory AuthEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory AuthEvent.registerWithEmailAndPassword() =
      _RegisterWithEmailAndPassword;
  const factory AuthEvent.registerWithGoogle() = _RegisterWithGoogle;
  const factory AuthEvent.registerWithFacebook() = _RegisterWithFacebook;
  const factory AuthEvent.toggleBetweenAuthPages() = _ToggleBetweenAuthPages;
}
