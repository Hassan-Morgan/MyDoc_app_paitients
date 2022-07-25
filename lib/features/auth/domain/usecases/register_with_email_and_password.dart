import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/email_and_password_params.dart';
@lazySingleton
class RegisterWithEmailAndPasswordUsecase
    implements BaseUsecase<Unit, EmailAndPasswordParams> {
  final AuthRepository _repository;

  RegisterWithEmailAndPasswordUsecase(this._repository);
  @override
  Future<Either<AuthFailures, Unit>> call(EmailAndPasswordParams params) async {
    return await _repository.registerWithEmailAndPassword(
        params.email, params.password);
  }
}
