import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class GetCurrentUserUsecase implements BaseUsecase<UserEntity, NoParams> {
  final AuthRepository _repository;

  GetCurrentUserUsecase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
