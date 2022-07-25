// Mocks generated by Mockito 5.2.0 from annotations
// in my_doc_app_for_patients/test/features/init_app_pref/presentation/logic/local_app_pref_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart' as _i5;
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart' as _i7;
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart'
    as _i6;
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_theme_entity.dart'
    as _i9;
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_language_usecase.dart'
    as _i3;
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/usecases/get_app_theme_usecase.dart'
    as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [GetAppLanguageUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAppLanguageUsecase extends _i1.Mock
    implements _i3.GetAppLanguageUsecase {
  MockGetAppLanguageUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.CashFailures, _i6.AppLanguageEntity>> call(
          _i7.NoParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue: Future<
                  _i2.Either<_i5.CashFailures, _i6.AppLanguageEntity>>.value(
              _FakeEither_0<_i5.CashFailures, _i6.AppLanguageEntity>())) as _i4
          .Future<_i2.Either<_i5.CashFailures, _i6.AppLanguageEntity>>);
}

/// A class which mocks [GetAppThemeUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAppThemeUsecase extends _i1.Mock
    implements _i8.GetAppThemeUsecase {
  MockGetAppThemeUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.CashFailures, _i9.AppThemeEntity>> call(
          _i7.NoParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue:
              Future<_i2.Either<_i5.CashFailures, _i9.AppThemeEntity>>.value(
                  _FakeEither_0<_i5.CashFailures, _i9.AppThemeEntity>())) as _i4
          .Future<_i2.Either<_i5.CashFailures, _i9.AppThemeEntity>>);
}
