import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/end_points/remote_end_points.dart';
import 'package:my_doc_app_for_patients/core/errors/app_exceptions.dart';

import '../../models/user_model.dart';

abstract class FirebaseAuthRemoteDataSource {
  Future<Either<CurrentUserException, UserModel>> getCurrentUser();
  Future<Either<AuthExceptions, Unit>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<AuthExceptions, Unit>> registerWithEmailAndPassword(
      String email, String password);
  Future<Either<AuthExceptions, Unit>> registerWithGoogle();
  Future<Either<AuthExceptions, Unit>> registerWithFacebook();
  Future<Either<AuthExceptions, Unit>> resetPassword(String email);
  Future<Either<AuthExceptions, Unit>> sendEmailVerification();
}

@LazySingleton(as: FirebaseAuthRemoteDataSource)
class FirebaseAuthRemoteDataSourceImpl implements FirebaseAuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthRemoteDataSourceImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
    this._firebaseFirestore,
  );

  @override
  Future<Either<CurrentUserException, UserModel>> getCurrentUser() async {
    try {
      final User? currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return const Left(CurrentUserException.noCurrentUser());
      }
      await currentUser.reload();
      if (!currentUser.emailVerified &&
          currentUser.providerData[0].providerId != 'facebook.com') {
        return const Left(CurrentUserException.unverifiedEmail());
      }
      final userData = await _firebaseFirestore
          .doc('$FIREBASE_USERS_COLLECTION/${currentUser.uid}')
          .get();
      if (!userData.exists) {
        return const Left(CurrentUserException.uncompletedAccount());
      }
      return Right(UserModel.fromUser(currentUser));
    } catch (_) {
      return const Left(CurrentUserException.serverError());
    }
  }

  @override
  Future<Either<AuthExceptions, Unit>> signInWithEmailAndPassword(
      String email, String password) async {
    return _authWithEmailAndPassword(
      authFunction: _firebaseAuth.signInWithEmailAndPassword,
      email: email,
      password: password,
    );
  }

  @override
  Future<Either<AuthExceptions, Unit>> registerWithEmailAndPassword(
      String email, String password) {
    return _authWithEmailAndPassword(
      authFunction: _firebaseAuth.createUserWithEmailAndPassword,
      email: email,
      password: password,
    );
  }

  @override
  Future<Either<AuthExceptions, Unit>> registerWithFacebook() async {
    try {
      final LoginResult loginResult = await _facebookAuth.login();
      if (loginResult.accessToken == null) {
        return const Left(AuthExceptions.canceledByUser());
      }
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      return const Right(unit);
    } catch (_) {
      return const Left(AuthExceptions.serverException());
    }
  }

  @override
  Future<Either<AuthExceptions, Unit>> registerWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(AuthExceptions.canceledByUser());
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      return const Right(unit);
    } catch (_) {
      return const Left(AuthExceptions.serverException());
    }
  }

  @override
  Future<Either<AuthExceptions, Unit>> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return const Left(AuthExceptions.wrongEmail());
      }
      return const Left(AuthExceptions.serverException());
    }
  }

  @override
  Future<Either<AuthExceptions, Unit>> sendEmailVerification() async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      await currentUser!.sendEmailVerification();
      return const Right(unit);
    } catch (e) {
      return const Left(AuthExceptions.serverException());
    }
  }

  Future<Either<AuthExceptions, Unit>> _authWithEmailAndPassword({
    required Future<UserCredential> Function(
            {required String email, required String password})
        authFunction,
    required String email,
    required String password,
  }) async {
    try {
      final userCredintial =
          await authFunction(email: email, password: password);
      if (!userCredintial.user!.emailVerified) {
        userCredintial.user!.sendEmailVerification();
      }
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
        case 'wrong-password':
          return const Left(AuthExceptions.incorrectEmailOrPassword());
        case 'email-already-in-use':
          return const Left(AuthExceptions.emailAlreadyRegistered());
      }
      return const Left(AuthExceptions.serverException());
    } catch (_) {
      return const Left(AuthExceptions.serverException());
    }
  }
}
