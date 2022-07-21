import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';

import '../entities/app_theme_entity.dart';
import '../repositories/app_pref_repository.dart';

@lazySingleton
class GetAppThemeUsecase implements BaseUsecase<AppThemeEntity, NoParams> {
  final AppPrefRepository _repository;

  GetAppThemeUsecase(this._repository);
  @override
  Future<Either<Failure, AppThemeEntity>> call(NoParams params) async {
    return await _repository.getAppTheme();
  }
}
