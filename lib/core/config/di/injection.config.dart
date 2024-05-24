// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_bricks_folder_structure/core/config/di/injectable_module.dart'
    as _i6;
import 'package:flutter_bricks_folder_structure/features/login/data/data_sources/login_remote_data_source.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => injectableModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i4.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i5.LoginRemoteDataSource>(
      () => _i5.LoginRemoteDataSource(gh<_i4.Dio>()));
  return getIt;
}

class _$InjectableModule extends _i6.InjectableModule {}
