import 'package:dartz/dartz.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';

import '../entities/app_language_entity.dart';
import '../entities/app_theme_entity.dart';

abstract class AppPrefRepository {
  Future<Either<CashFailures, AppThemeEntity>> getAppTheme();
  Future<Either<CashFailures, AppLanguageEntity>> getAppLanguage();
}
