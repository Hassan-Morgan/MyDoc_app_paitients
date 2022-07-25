import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/end_points/local_cash_end_points.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/features/auth/data/models/user_model.dart';

abstract class CurrentUserLocalDataSource {
  Future<Either<CashExceptions, UserModel>> getCurrentUser();
  Future<void> setCurrentUser(UserModel model);
}

@LazySingleton(as: CurrentUserLocalDataSource)
class CurrentUserLocalDatatSourceImpl extends CurrentUserLocalDataSource {
  final HiveInterface _hive;

  CurrentUserLocalDatatSourceImpl(this._hive);

  @override
  Future<Either<CashExceptions, UserModel>> getCurrentUser() async {
    final box = await _hive.openBox(LOCAL_PREF_BOX_KEY);
    try {
      final Map? currentUser = box.get(CURRENT_USER_FIELD_KEY);
      if (currentUser == null) {
        return const Left(CashExceptions.noDataException());
      }
      return Right(UserModel.fromMap(currentUser ));
    } catch (e) {
      return const Left(CashExceptions.unImplementedException());
    } finally {
      box.close();
    }
  }

  @override
  Future<void> setCurrentUser(UserModel model) async {
    final box = await _hive.openBox(LOCAL_PREF_BOX_KEY);
    await box.put(CURRENT_USER_FIELD_KEY, model.toMap());
    await box.close();
  }
}
