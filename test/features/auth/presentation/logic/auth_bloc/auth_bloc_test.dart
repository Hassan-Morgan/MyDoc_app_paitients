import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/utils/app_enums.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/register_with_email_and_password.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/register_with_facebook_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/register_with_google_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([
  RegisterWithFacebookUsecase,
  RegisterWithGoogleUsecase,
  RegisterWithEmailAndPasswordUsecase,
  SignInWithEmailAndPasswordUsecase,
])
void main() {
  late MockRegisterWithEmailAndPasswordUsecase
      registerWithEmailAndPasswordUsecase;
  late MockSignInWithEmailAndPasswordUsecase signInWithEmailAndPasswordUsecase;
  late MockRegisterWithFacebookUsecase registerWithFacebookUsecase;
  late MockRegisterWithGoogleUsecase registerWithGoogleUsecase;
  late AuthBloc authBloc;
  setUp(
    () {
      registerWithFacebookUsecase = MockRegisterWithFacebookUsecase();
      registerWithGoogleUsecase = MockRegisterWithGoogleUsecase();
      registerWithEmailAndPasswordUsecase =
          MockRegisterWithEmailAndPasswordUsecase();
      signInWithEmailAndPasswordUsecase =
          MockSignInWithEmailAndPasswordUsecase();
      authBloc = AuthBloc(
        registerWithEmailAndPasswordUsecase,
        registerWithFacebookUsecase,
        registerWithGoogleUsecase,
        signInWithEmailAndPasswordUsecase,
      );
    },
  );
  const testValidEmail = 'test@test.com';
  const testInvalidEmail = 'test.com';
  const testEmptyPass = '';
  const testInvalidPass = '1234';
  const testValidPass = 'Abc@1234';

  blocTest(
    'should change the state with obsercurePassword false when add changePasswordVisability event',
    build: () => authBloc,
    act: (bloc) => authBloc.add(const AuthEvent.changePasswordVisiblity()),
    expect: () => [
      AuthState.initial().copyWith(obsecurePassword: false),
    ],
  );

 blocTest(
    'should change the state with authPage SignUpPage when add toggleBetweenAuthPages event',
    build: () => authBloc,
    act: (bloc) => authBloc.add(const AuthEvent.toggleBetweenAuthPages()),
    expect: () => [
      AuthState.initial().copyWith(authPage: AuthPagesEnum.singUpPage),
    ],
  );

  group(
    'change email field event',
    () {
      blocTest(
        '''should change the state with email = testVaildEmail and isEmailValid = true 
        when add emailFeildChanged event with valid email''',
        build: () => authBloc,
        act: (bloc) =>
            authBloc.add(const AuthEvent.emailFieldChanged(testValidEmail)),
        expect: () => [
          AuthState.initial().copyWith(
            email: testValidEmail,
            isEmailValid: true,
          ),
        ],
      );

      blocTest(
        '''should change the state with email = testInvalidEmail and isEmailValid = false 
        when add emailFeildChanged event with invalid email''',
        build: () => authBloc,
        act: (bloc) =>
            authBloc.add(const AuthEvent.emailFieldChanged(testInvalidEmail)),
        expect: () => [
          AuthState.initial().copyWith(
            email: testInvalidEmail,
            isEmailValid: false,
          ),
        ],
      );
    },
  );

  group(
    'password field changed event',
    () {
      group(
        'sign in page',
        () {
          blocTest(
            '''should emit state with password = testInvalidPass and isPasswordValid = true 
            when user even enters invalid password in sign in page''',
            build: () => authBloc,
            act: (_) => authBloc
                .add(const AuthEvent.passwordFieldChanged(testInvalidPass)),
            expect: () => [
              AuthState.initial().copyWith(
                password: testInvalidPass,
                isPasswordValid: true,
              ),
            ],
          );

          blocTest(
            '''should emit state with password = testInvalidPassword and isPasswordValid = false 
            when user enters empty password in sign in page''',
            build: () => authBloc,
            act: (_) => authBloc
                .add(const AuthEvent.passwordFieldChanged(testEmptyPass)),
            expect: () => [
              AuthState.initial().copyWith(
                password: testEmptyPass,
                isPasswordValid: false,
              ),
            ],
          );
        },
      );
      group(
        'sign up page',
        () {
          blocTest(
            '''should emit state with password = testValidPass and isPasswordValid = true 
            when user enters valide password in sign up page''',
            build: () => authBloc,
            act: (_) => authBloc
                .add(const AuthEvent.passwordFieldChanged(testValidPass)),
            seed: () => AuthState.initial()
                .copyWith(authPage: AuthPagesEnum.singUpPage),
            expect: () => [
              AuthState.initial().copyWith(
                password: testValidPass,
                isPasswordValid: true,
                authPage: AuthPagesEnum.singUpPage,
              ),
            ],
          );

          blocTest(
            '''should emit state with password = testInvalid and isPasswordValid = false 
            when user enters invalide password in sign up page''',
            build: () => authBloc,
            act: (_) => authBloc
                .add(const AuthEvent.passwordFieldChanged(testInvalidPass)),
            seed: () => AuthState.initial()
                .copyWith(authPage: AuthPagesEnum.singUpPage),
            expect: () => [
              AuthState.initial().copyWith(
                password: testInvalidPass,
                isPasswordValid: false,
                authPage: AuthPagesEnum.singUpPage,
              ),
            ],
          );
        },
      );
    },
  );

  group(
    'sign in with email and password',
    () {
      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() 
        and then emit the state with isLoading = false and authSuccessOrFailure = some(Right(unit))
        when the call signInWithEmailAndPasswordUsecase and no error happen''',
        build: () => authBloc,
        setUp: () => when(signInWithEmailAndPasswordUsecase(any))
            .thenAnswer((realInvocation) async => const Right(unit)),
        act: (_) => authBloc.add(const AuthEvent.signInWithEmailAndPassword()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Right(unit)),
          ),
        ],
      );

      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() and  
        then emit the state with isLoading = false and authSuccessOrFailure = some(Left(AuthFailure))
        when the call signInWithEmailAndPasswordUsecase and any error happen''',
        build: () => authBloc,
        setUp: () => when(signInWithEmailAndPasswordUsecase(any)).thenAnswer(
            (realInvocation) async => const Left(AuthFailures.serverError())),
        act: (_) => authBloc.add(const AuthEvent.signInWithEmailAndPassword()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Left(AuthFailures.serverError())),
          ),
        ],
      );
    },
  );

  group(
    'register with email and password',
    () {
      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() 
        and then emit the state with isLoading = false and authSuccessOrFailure = some(Right(unit))
        when the call registerWithEmailAndPasswordUsecase and no error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithEmailAndPasswordUsecase(any))
            .thenAnswer((realInvocation) async => const Right(unit)),
        act: (_) => authBloc.add(const AuthEvent.registerWithEmailAndPassword()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Right(unit)),
          ),
        ],
      );

      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() and  
        then emit the state with isLoading = false and authSuccessOrFailure = some(Left(AuthFailure))
        when the call registerWithEmailAndPasswordUsecase and any error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithEmailAndPasswordUsecase(any)).thenAnswer(
            (realInvocation) async => const Left(AuthFailures.serverError())),
        act: (_) => authBloc.add(const AuthEvent.registerWithEmailAndPassword()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Left(AuthFailures.serverError())),
          ),
        ],
      );
    },
  );

 group(
    'register with google',
    () {
      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() 
        and then emit the state with isLoading = false and authSuccessOrFailure = some(Right(unit))
        when the call registerWithgoogleUsecase and no error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithGoogleUsecase(any))
            .thenAnswer((realInvocation) async => const Right(unit)),
        act: (_) => authBloc.add(const AuthEvent.registerWithGoogle()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Right(unit)),
          ),
        ],
      );

      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() and  
        then emit the state with isLoading = false and authSuccessOrFailure = some(Left(AuthFailure))
        when the call registerWithGoogleUsecase and any error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithGoogleUsecase(any)).thenAnswer(
            (realInvocation) async => const Left(AuthFailures.serverError())),
        act: (_) => authBloc.add(const AuthEvent.registerWithGoogle()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Left(AuthFailures.serverError())),
          ),
        ],
      );
    },
  );

group(
    'register with facebook',
    () {
      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() 
        and then emit the state with isLoading = false and authSuccessOrFailure = some(Right(unit))
        when the call registerWithFacebookUsecase and no error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithFacebookUsecase(any))
            .thenAnswer((realInvocation) async => const Right(unit)),
        act: (_) => authBloc.add(const AuthEvent.registerWithFacebook()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Right(unit)),
          ),
        ],
      );

      blocTest(
        '''should first emit the state with isLoading = true and authSuccessOrFailure = none() and  
        then emit the state with isLoading = false and authSuccessOrFailure = some(Left(AuthFailure))
        when the call registerWithFacebookUsecase and any error happen''',
        build: () => authBloc,
        setUp: () => when(registerWithFacebookUsecase(any)).thenAnswer(
            (realInvocation) async => const Left(AuthFailures.serverError())),
        act: (_) => authBloc.add(const AuthEvent.registerWithFacebook()),
        expect: () => [
          AuthState.initial().copyWith(isLoading: true),
          AuthState.initial().copyWith(
            isLoading: false,
            authSuccessOrFailure: const Some(Left(AuthFailures.serverError())),
          ),
        ],
      );
    },
  );


}
