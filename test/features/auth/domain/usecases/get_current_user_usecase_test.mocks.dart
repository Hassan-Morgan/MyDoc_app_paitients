// Mocks generated by Mockito 5.2.0 from annotations
// in my_doc_app_for_patients/test/features/auth/domain/usecases/get_current_user_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart' as _i5;
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart'
    as _i6;
import 'package:my_doc_app_for_patients/features/auth/domain/repositories/auth_repository.dart'
    as _i3;

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

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>> sentEmailVerification() =>
      (super.noSuchMethod(Invocation.method(#sentEmailVerification, []),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CurrentUserFailures, _i6.UserEntity>>
      getCurrentUser() => (super.noSuchMethod(
          Invocation.method(#getCurrentUser, []),
          returnValue: Future<
                  _i2.Either<_i5.CurrentUserFailures, _i6.UserEntity>>.value(
              _FakeEither_0<_i5.CurrentUserFailures, _i6.UserEntity>())) as _i4
          .Future<_i2.Either<_i5.CurrentUserFailures, _i6.UserEntity>>);
  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>> signInWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [email, password]),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>
      registerWithEmailAndPassword(String? email, String? password) =>
          (super.noSuchMethod(
              Invocation.method(
                  #registerWithEmailAndPassword, [email, password]),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>())) as _i4
              .Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>> registerWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#registerWithGoogle, []),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>> registerWithFacebook() =>
      (super.noSuchMethod(Invocation.method(#registerWithFacebook, []),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>> resetPassword(
          String? email) =>
      (super.noSuchMethod(Invocation.method(#resetPassword, [email]),
              returnValue: Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AuthFailures, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AuthFailures, _i2.Unit>>);
}
