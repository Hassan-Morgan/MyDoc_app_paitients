part of 'init_page_cubit.dart';

@freezed
class AuthInitPageState with _$AuthInitPageState {
  factory AuthInitPageState.initState() = _InitState;
  factory AuthInitPageState.successState(UserEntity currentUser) = _SuccessState;
  factory AuthInitPageState.errorState() = _ErrorState;
}
