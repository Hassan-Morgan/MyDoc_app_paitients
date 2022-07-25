import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/reset_password_usecase.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._resetPasswordUsecase)
      : super(const ResetPasswordState.initial());
  final ResetPasswordUsecase _resetPasswordUsecase;

  String email = '';
  bool isEmailValid = false;

  void emailFieldChanged(String value) {
    isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    email = value;
  }

  void sendResetEmail() async {
    emit(const ResetPasswordState.loading());
    final result = await _resetPasswordUsecase(email);
    result.fold(
      (l) => emit(ResetPasswordState.error(l)),
      (r) => emit(const ResetPasswordState.success()),
    );
  }
}
