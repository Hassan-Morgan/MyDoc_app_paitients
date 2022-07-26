import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/end_points/remote_end_points.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';
import 'package:my_doc_app_for_patients/features/auth/data/data_source/remote_data_source/firebase_remote_data_source.dart';
import 'package:my_doc_app_for_patients/features/auth/data/models/user_model.dart';

import 'firebase_remote_data_source_test.mocks.dart';

@GenerateMocks([
  FirebaseAuth,
  GoogleSignIn,
  FacebookAuth,
  User,
  UserCredential,
  FirebaseFirestore,
  DocumentReference<Map<String, dynamic>>,
  DocumentSnapshot<Map<String, dynamic>>,
])
void main() {
  late MockFirebaseAuth firebaseAuth;
  late FirebaseAuthRemoteDataSource remoteDataSource;
  late MockGoogleSignIn googleSignIn;
  late MockFacebookAuth facebookAuth;
  late MockFirebaseFirestore firebaseFirestore;
  late MockUser testUser;
  late MockDocumentSnapshot<Map<String, dynamic>> testDocumentSnapshot;
  late MockDocumentReference<Map<String, dynamic>> testDocRefrence;
  late MockUserCredential testUserCredentail;

  setUp(
    () {
      firebaseAuth = MockFirebaseAuth();
      googleSignIn = MockGoogleSignIn();
      facebookAuth = MockFacebookAuth();
      firebaseFirestore = MockFirebaseFirestore();
      remoteDataSource = FirebaseAuthRemoteDataSourceImpl(
          firebaseAuth, googleSignIn, facebookAuth, firebaseFirestore);
      testUser = MockUser();
      testDocRefrence = MockDocumentReference();
      testDocumentSnapshot = MockDocumentSnapshot();
      testUserCredentail = MockUserCredential();
      when(testUser.uid).thenReturn('test userId');
      when(testUser.email).thenReturn(null);
      when(testUserCredentail.user).thenReturn(testUser);
      when(testUser.displayName).thenReturn(null);
      when(testUser.phoneNumber).thenReturn(null);
      when(firebaseFirestore.doc(any)).thenReturn(testDocRefrence);
    },
  );

  final testUserModel = UserModel(
    userId: 'test userId',
    email: null,
    phoneNumber: null,
    userName: null,
  );

  const testEmail = 'test email';
  const testPassword = 'test password';

  group(
    'getCurrentUser',
    () {
      test(
        'should return currentUser when call the function and no errors happen',
        () async {
          when(firebaseAuth.currentUser).thenReturn(testUser);
          when(testUser.emailVerified).thenAnswer((realInvocation) => true);
          when(testDocRefrence.get())
              .thenAnswer((realInvocation) async => testDocumentSnapshot);
          when(testDocumentSnapshot.exists)
              .thenAnswer((realInvocation) => true);
          final result = await remoteDataSource.getCurrentUser();
          expect(result, Right(testUserModel));
          verify(firebaseAuth.currentUser).called(1);
          verify(testUser.emailVerified).called(1);
          verify(firebaseFirestore
                  .doc('$FIREBASE_USERS_COLLECTION/test userId'))
              .called(1);
          verify(testDocumentSnapshot.exists).called(1);
        },
      );

      test(
        'should return CurrentUserException.noCurrentUser when call the function there is no currentuser',
        () async {
          when(firebaseAuth.currentUser).thenReturn(null);
          final result = await remoteDataSource.getCurrentUser();
          expect(result, const Left(CurrentUserException.noCurrentUser()));
          verify(firebaseAuth.currentUser).called(1);
          verifyNever(testUser.emailVerified);
          verifyNever(firebaseFirestore.doc(any));
          verifyNever(testDocumentSnapshot.exists);
        },
      );

      test(
        'should return CurrentUserException.unverifiedEmail when call the function and emai is unverified',
        () async {
          when(firebaseAuth.currentUser).thenReturn(testUser);
          when(testUser.emailVerified).thenAnswer((realInvocation) => false);
          when(testUser.providerData).thenReturn([UserInfo({'providerId':'google.com'})]);
          final result = await remoteDataSource.getCurrentUser();
          expect(result, const Left(CurrentUserException.unverifiedEmail()));
          verify(firebaseAuth.currentUser).called(1);
          verify(testUser.emailVerified).called(1);
          verifyNever(firebaseFirestore.doc(any));
          verifyNever(testDocumentSnapshot.exists);
        },
      );

      test(
        'should return CurrentUserException.uncompletedAccount() when call the function and user info not stored in firestore',
        () async {
          when(firebaseAuth.currentUser).thenReturn(testUser);
          when(testUser.emailVerified).thenAnswer((realInvocation) => true);
          when(testDocRefrence.get())
              .thenAnswer((realInvocation) async => testDocumentSnapshot);
          when(testDocumentSnapshot.exists)
              .thenAnswer((realInvocation) => false);
          final result = await remoteDataSource.getCurrentUser();
          expect(result, const Left(CurrentUserException.uncompletedAccount()));
          verify(firebaseAuth.currentUser).called(1);
          verify(testUser.emailVerified).called(1);
          verify(firebaseFirestore
                  .doc('$FIREBASE_USERS_COLLECTION/test userId'))
              .called(1);
          verify(testDocumentSnapshot.exists).called(1);
        },
      );
    },
  );

  group(
    'signInWithEmailAndPassword',
    () {
      test(
        'should return unit when call the function and no errors happen',
        () async {
          when(testUser.emailVerified).thenReturn(false);
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenAnswer((_) async => testUserCredentail);
          final result = await remoteDataSource.signInWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Right(unit));
          verify(firebaseAuth.signInWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
      test(
        '''should return AuthExcption.incorrectEmailOrPassword when call the function 
        and firebase wrong-password or user-not-found errors happen ''',
        () async {
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenThrow(FirebaseAuthException(code: 'user-not-found'));
          final result = await remoteDataSource.signInWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Left(AuthExceptions.incorrectEmailOrPassword()));
          verify(firebaseAuth.signInWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
      test(
        '''should return AuthExcption.serverException when call the function 
        and any unexpected error happen errors happen ''',
        () async {
          when(firebaseAuth.signInWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenThrow(Exception());
          final result = await remoteDataSource.signInWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Left(AuthExceptions.serverException()));
          verify(firebaseAuth.signInWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
    },
  );

  group(
    'registerWithEmailAndPassword',
    () {
      test(
        'should return unit when call the function and no errors happen',
        () async {
          when(testUser.emailVerified).thenReturn(false);
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenAnswer((_) async => testUserCredentail);
          final result = await remoteDataSource.registerWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Right(unit));
          verify(firebaseAuth.createUserWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
      test(
        '''should return AuthExcption.incorrectEmailOrPassword when call the function 
        and firebase wrong-password or user-not-found errors happen ''',
        () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenThrow(FirebaseAuthException(code: 'email-already-in-use'));
          final result = await remoteDataSource.registerWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Left(AuthExceptions.emailAlreadyRegistered()));
          verify(firebaseAuth.createUserWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
      test(
        '''should return AuthExcption.serverException when call the function 
        and any unexpected error happen errors happen ''',
        () async {
          when(firebaseAuth.createUserWithEmailAndPassword(
                  email: anyNamed('email'), password: anyNamed('password')))
              .thenThrow(Exception());
          final result = await remoteDataSource.registerWithEmailAndPassword(
              testEmail, testPassword);
          expect(result, const Left(AuthExceptions.serverException()));
          verify(firebaseAuth.createUserWithEmailAndPassword(
                  email: testEmail, password: testPassword))
              .called(1);
        },
      );
    },
  );

  group(
    'reset password',
    () {
      test(
        'should return unit when call the function and no errors happen',
        () async {
          when(firebaseAuth.sendPasswordResetEmail(email: anyNamed('email')))
              .thenAnswer((realInvocation) async => unit);

          final result = await remoteDataSource.resetPassword(testEmail);
          expect(result, const Right(unit));
          verify(firebaseAuth.sendPasswordResetEmail(email: testEmail))
              .called(1);
        },
      );
      test(
        'should return AuthException.wrongEmail when call the function and the email not registered',
        () async {
          when(firebaseAuth.sendPasswordResetEmail(email: anyNamed('email')))
              .thenThrow(FirebaseAuthException(code: 'user-not-found'));
          final result = await remoteDataSource.resetPassword(testEmail);
          expect(result, const Left(AuthExceptions.wrongEmail()));
          verify(firebaseAuth.sendPasswordResetEmail(email: testEmail))
              .called(1);
        },
      );
      test(
        'should return AuthException.server when call the function and server exception happen',
        () async {
          when(firebaseAuth.sendPasswordResetEmail(email: anyNamed('email')))
              .thenThrow(FirebaseAuthException(code: 'any_code'));
          final result = await remoteDataSource.resetPassword(testEmail);
          expect(result, const Left(AuthExceptions.serverException()));
          verify(firebaseAuth.sendPasswordResetEmail(email: testEmail))
              .called(1);
        },
      );
    },
  );

  group(
    'send email verification',
    () {
      test(
        'should return unit when call the function and no error happen',
        () async {
          when(firebaseAuth.currentUser).thenReturn(testUser);
          when(testUser.email).thenReturn(testEmail);
          when(testUser.sendEmailVerification())
              .thenAnswer((realInvocation) async => unit);
          final result = await remoteDataSource.sendEmailVerification();
          expect(result, const Right(unit));
          verify(firebaseAuth.currentUser).called(1);
          verify(testUser.sendEmailVerification()).called(1);
        },
      );

      test(
        'should return AuthFailure.serverError when call the function and anyerror happen',
        () async {
          when(firebaseAuth.currentUser).thenReturn(testUser);
          when(testUser.email).thenReturn(testEmail);
          when(testUser.sendEmailVerification()).thenThrow(Exception());
          final result = await remoteDataSource.sendEmailVerification();
          expect(result, const Left(AuthExceptions.serverException()));
          verify(firebaseAuth.currentUser).called(1);
          verify(testUser.sendEmailVerification()).called(1);
        },
      );
    },
  );
}
