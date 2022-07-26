import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/end_points/local_cash_end_points.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/local_data_source/current_user_local_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/models/user_model.dart';

import 'current_user_local_data_source_test.mocks.dart';

@GenerateMocks([HiveInterface, Box])
void main() {
  late MockHiveInterface hive;
  late CurrentUserLocalDataSource localDataSource;

  setUp(
    () {
      hive = MockHiveInterface();
      localDataSource = CurrentUserLocalDatatSourceImpl(hive);
    },
  );

  final Box testBox = MockBox();
  const testUserMap = {
    'user_id': 'test userId',
    'phone_number': null,
    'user_name': null,
    'email': null,
  };
  final testUserModel = UserModel(
    userId: 'test userId',
    email: null,
    phoneNumber: null,
    userName: null,
  );

  group(
    'getCurrentUser',
    () {
      test(
        "should return UserModel when call the function and no errors happen",
        () async {
          when(hive.openBox(any)).thenAnswer((realInvocation) async => testBox);
          when(testBox.get(any)).thenReturn(testUserMap);
          final result = await localDataSource.getCurrentUser();
          expect(result, Right(testUserModel));
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(testBox.get(CURRENT_USER_FIELD_KEY)).called(1);
          verify(testBox.close()).called(1);
        },
      );

      test(
        "should return CurrentUserException.noCurrentUser when call the function and no data stored",
        () async {
          when(hive.openBox(any)).thenAnswer((realInvocation) async => testBox);
          when(testBox.get(any)).thenReturn(null);
          final result = await localDataSource.getCurrentUser();
          expect(result, const Left(CurrentUserException.noCurrentUser()));
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(testBox.get(CURRENT_USER_FIELD_KEY)).called(1);
          verify(testBox.close()).called(1);
        },
      );

      test(
        "should return CurrentUserException.cashError when call the function and error happen",
        () async {
          when(hive.openBox(any)).thenAnswer((realInvocation) async => testBox);
          when(testBox.get(any)).thenThrow(Exception());
          final result = await localDataSource.getCurrentUser();
          expect(result, const Left(CurrentUserException.cashError()));
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(testBox.get(CURRENT_USER_FIELD_KEY)).called(1);
          verify(testBox.close()).called(1);
        },
      );
    },
  );

  group(
    'setCurrentUserId',
    () {
      test(
        "should open local pref box and set the model to the local box and then close the box",
        () async {
          when(hive.openBox(any)).thenAnswer((realInvocation) async => testBox);
          when(testBox.put(any, any))
              .thenAnswer((realInvocation) async => unit);
          await localDataSource.setCurrentUser(testUserModel);
          verify(hive.openBox(LOCAL_PREF_BOX_KEY)).called(1);
          verify(testBox.put(CURRENT_USER_FIELD_KEY, testUserMap)).called(1);
          verify(testBox.close()).called(1);
        },
      );
    },
  );
}
