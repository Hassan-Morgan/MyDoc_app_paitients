import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';

import '../../../../core/end_points/local_cash_end_points.dart';
import '../models/app_language_model.dart';
import '../models/app_theme_model.dart';

abstract class AppPrefLocalDataSource {
  Future<Either<CashExceptions, AppThemeModel>> getAppTheme();
  Future<Either<CashExceptions, AppLanguageModel>> getAppLanguage();
}

@LazySingleton(as: AppPrefLocalDataSource)
class AppPrefLocalDataSourceImpl implements AppPrefLocalDataSource {
  final HiveInterface _hive;

  AppPrefLocalDataSourceImpl(this._hive);
  @override
  Future<Either<CashExceptions, AppLanguageModel>> getAppLanguage() async {
    final box = await _hive.openBox(LOCAL_PREF_BOX_KEY);
    final result = await _getLocalData<AppLanguageModel>(
      feildKey: LOCAL_PREF_LANGUAGE_FIELD_KEY,
      box: box,
      setValueFuncion: AppLanguageModel.fromString,
    );
    await box.close();
    return result;
  }

  @override
  Future<Either<CashExceptions, AppThemeModel>> getAppTheme() async {
    final box = await _hive.openBox(LOCAL_PREF_BOX_KEY);
    return await _getLocalData<AppThemeModel>(
      feildKey: LOCAL_PREF_THEME_FIELD_KEY,
      box: box,
      setValueFuncion: AppThemeModel.fromString,
    );
  }

  Future<Either<CashExceptions, T>> _getLocalData<T>({
    required String feildKey,
    required Box box,
    required T Function(String result) setValueFuncion,
  }) async {
    try {
      String? theme = box.get(feildKey);
      if (theme == null) {
        return const Left(CashExceptions.noDataException());
      }
      return Right(setValueFuncion(theme));
    } catch (_) {
      return const Left(CashExceptions.unImplementedException());
    }
  }
}
