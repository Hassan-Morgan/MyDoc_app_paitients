import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/data_sources/local_data_source.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/mappers/app_language_mapper.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/data/mappers/app_theme_mapper.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_theme_entity.dart';

import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart';

import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/app_pref_repository.dart';

@LazySingleton(as: AppPrefRepository)
class AppPrefRepositoryImpl implements AppPrefRepository {
  final AppPrefLocalDataSource _localDataSource;

  AppPrefRepositoryImpl(this._localDataSource);
  @override
  Future<Either<CashFailures, AppLanguageEntity>> getAppLanguage() async {
    final result = await _localDataSource.getAppLanguage();
    return result.fold(
      (l) => l.when(
        noDataException: () => const Left(CashFailures.noDataStored()),
        unImplementedException: () => const Left(CashFailures.getDataFailure()),
      ),
      (r) => Right(r.toEntity()),
    );
  }

  @override
  Future<Either<CashFailures, AppThemeEntity>> getAppTheme() async {
    final result = await _localDataSource.getAppTheme();
    return result.fold(
      (l) => l.when(
        noDataException: () => const Left(CashFailures.noDataStored()),
        unImplementedException: () => const Left(CashFailures.getDataFailure()),
      ),
      (r) => Right(r.toEntity()),
    );
  }
}
