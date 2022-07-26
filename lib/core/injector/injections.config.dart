// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:hive/hive.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import '../../features/auth/data/data_source/local_data_source/current_user_local_data_source.dart'
    as _i13;
import '../../features/auth/data/data_source/remote_data_source/firebase_remote_data_source.dart'
    as _i14;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i19;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i18;
import '../../features/auth/domain/usecases/get_current_user_usecase.dart'
    as _i20;
import '../../features/auth/domain/usecases/register_with_email_and_password.dart'
    as _i21;
import '../../features/auth/domain/usecases/register_with_facebook_usecase.dart'
    as _i22;
import '../../features/auth/domain/usecases/register_with_google_usecase.dart'
    as _i23;
import '../../features/auth/domain/usecases/reset_password_usecase.dart'
    as _i24;
import '../../features/auth/domain/usecases/send_verification_email_usecase.dart'
    as _i25;
import '../../features/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart'
    as _i26;
import '../../features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart'
    as _i28;
import '../../features/auth/presentation/logic/init_cubit/init_page_cubit.dart'
    as _i29;
import '../../features/auth/presentation/logic/reset_password_cubit/reset_password_cubit.dart'
    as _i30;
import '../../features/auth/presentation/logic/verify_email_cubit/verify_email_cubit.dart'
    as _i27;
import '../../features/init_app_pref/data/data_sources/local_data_source.dart'
    as _i10;
import '../../features/init_app_pref/data/repositories/app_pref_repository_impl.dart'
    as _i12;
import '../../features/init_app_pref/domain/repositories/app_pref_repository.dart'
    as _i11;
import '../../features/init_app_pref/domain/usecases/get_app_language_usecase.dart'
    as _i15;
import '../../features/init_app_pref/domain/usecases/get_app_theme_usecase.dart'
    as _i16;
import '../../features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart'
    as _i17;
import '../services/network_info_service.dart' as _i9;
import 'injection_module.dart' as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FacebookAuth>(() => registerModule.facebookAuth);
  gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i7.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i8.InternetConnectionChecker>(
      () => registerModule.internectConnectionChecker);
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i9.NetworkInfoImpl(get<_i8.InternetConnectionChecker>()));
  gh.lazySingleton<_i10.AppPrefLocalDataSource>(
      () => _i10.AppPrefLocalDataSourceImpl(get<_i7.HiveInterface>()));
  gh.lazySingleton<_i11.AppPrefRepository>(
      () => _i12.AppPrefRepositoryImpl(get<_i10.AppPrefLocalDataSource>()));
  gh.lazySingleton<_i13.CurrentUserLocalDataSource>(
      () => _i13.CurrentUserLocalDatatSourceImpl(get<_i7.HiveInterface>()));
  gh.lazySingleton<_i14.FirebaseAuthRemoteDataSource>(() =>
      _i14.FirebaseAuthRemoteDataSourceImpl(
          get<_i4.FirebaseAuth>(),
          get<_i6.GoogleSignIn>(),
          get<_i3.FacebookAuth>(),
          get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i15.GetAppLanguageUsecase>(
      () => _i15.GetAppLanguageUsecase(get<_i11.AppPrefRepository>()));
  gh.lazySingleton<_i16.GetAppThemeUsecase>(
      () => _i16.GetAppThemeUsecase(get<_i11.AppPrefRepository>()));
  gh.lazySingleton<_i17.AppPrefCubit>(() => _i17.AppPrefCubit(
      get<_i16.GetAppThemeUsecase>(), get<_i15.GetAppLanguageUsecase>()));
  gh.lazySingleton<_i18.AuthRepository>(() => _i19.AuthRepositoryImpl(
      get<_i14.FirebaseAuthRemoteDataSource>(),
      get<_i13.CurrentUserLocalDataSource>(),
      get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i20.GetCurrentUserUsecase>(
      () => _i20.GetCurrentUserUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i21.RegisterWithEmailAndPasswordUsecase>(() =>
      _i21.RegisterWithEmailAndPasswordUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i22.RegisterWithFacebookUsecase>(
      () => _i22.RegisterWithFacebookUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i23.RegisterWithGoogleUsecase>(
      () => _i23.RegisterWithGoogleUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i24.ResetPasswordUsecase>(
      () => _i24.ResetPasswordUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i25.SendVerificationEmailUsecase>(
      () => _i25.SendVerificationEmailUsecase(get<_i18.AuthRepository>()));
  gh.lazySingleton<_i26.SignInWithEmailAndPasswordUsecase>(
      () => _i26.SignInWithEmailAndPasswordUsecase(get<_i18.AuthRepository>()));
  gh.factory<_i27.VerifyEmailCubit>(
      () => _i27.VerifyEmailCubit(get<_i25.SendVerificationEmailUsecase>()));
  gh.lazySingleton<_i28.AuthBloc>(() => _i28.AuthBloc(
      get<_i21.RegisterWithEmailAndPasswordUsecase>(),
      get<_i22.RegisterWithFacebookUsecase>(),
      get<_i23.RegisterWithGoogleUsecase>(),
      get<_i26.SignInWithEmailAndPasswordUsecase>()));
  gh.factory<_i29.AuthInitPageCubit>(
      () => _i29.AuthInitPageCubit(get<_i20.GetCurrentUserUsecase>()));
  gh.factory<_i30.ResetPasswordCubit>(
      () => _i30.ResetPasswordCubit(get<_i24.ResetPasswordUsecase>()));
  return get;
}

class _$RegisterModule extends _i31.RegisterModule {}
