import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class ResetPasswordUsecase implements BaseUsecase<Unit, String> {
  final AuthRepository _repository;

  ResetPasswordUsecase(this._repository);
  @override
  Future<Either<AuthFailures, Unit>> call(String email) async {
    return await _repository.resetPassword(email);
  }
}
