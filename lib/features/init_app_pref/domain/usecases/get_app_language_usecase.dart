import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';

import '../entities/app_language_entity.dart';
import '../repositories/app_pref_repository.dart';

@lazySingleton
class GetAppLanguageUsecase
    implements BaseUsecase<AppLanguageEntity, NoParams> {
  final AppPrefRepository _repository;

  GetAppLanguageUsecase(this._repository);

  @override
  Future<Either<CashFailures, AppLanguageEntity>> call(NoParams params) async {
    return await _repository.getAppLanguage();
  }
}
