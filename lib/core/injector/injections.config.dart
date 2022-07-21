// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/init_app_pref/data/data_sources/local_data_source.dart'
    as _i4;
import '../../features/init_app_pref/data/repositories/app_pref_repository_impl.dart'
    as _i6;
import '../../features/init_app_pref/domain/repositories/app_pref_repository.dart'
    as _i5;
import '../../features/init_app_pref/domain/usecases/get_app_language_usecase.dart'
    as _i7;
import '../../features/init_app_pref/domain/usecases/get_app_theme_usecase.dart'
    as _i8;
import '../../features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart'
    as _i9;
import 'injection_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i4.AppPrefLocalDataSource>(
      () => _i4.AppPrefLocalDataSourceImpl(get<_i3.HiveInterface>()));
  gh.lazySingleton<_i5.AppPrefRepository>(
      () => _i6.AppPrefRepositoryImpl(get<_i4.AppPrefLocalDataSource>()));
  gh.lazySingleton<_i7.GetAppLanguageUsecase>(
      () => _i7.GetAppLanguageUsecase(get<_i5.AppPrefRepository>()));
  gh.lazySingleton<_i8.GetAppThemeUsecase>(
      () => _i8.GetAppThemeUsecase(get<_i5.AppPrefRepository>()));
  gh.lazySingleton<_i9.AppPrefCubit>(() => _i9.AppPrefCubit(
      get<_i8.GetAppThemeUsecase>(), get<_i7.GetAppLanguageUsecase>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
