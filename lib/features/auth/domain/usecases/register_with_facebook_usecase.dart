import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RegisterWithFacebookUsecase implements BaseUsecase<Unit, NoParams> {
  final AuthRepository _authRepository;

  RegisterWithFacebookUsecase(this._authRepository);
  @override
  Future<Either<AuthFailures, Unit>> call(NoParams params) async {
    return await _authRepository.registerWithFacebook();
  }
}
