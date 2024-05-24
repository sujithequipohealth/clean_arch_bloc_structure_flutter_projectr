import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/api_constant.dart';

@module
abstract class InjectableModule {
  @LazySingleton()
  Dio get dio {
    final options = BaseOptions(
      baseUrl: ApiConstants.baseURL,
    );
    return Dio(options);
  }

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
