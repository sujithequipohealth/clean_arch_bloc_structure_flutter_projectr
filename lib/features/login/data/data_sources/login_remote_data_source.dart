import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bricks_folder_structure/core/constants/api_constant.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginRemoteDataSource {
  final Dio dio;

  LoginRemoteDataSource(this.dio);

  Future<void> login(String username, String password) async {
    try {
      final data = {'username': username, 'password': password};
      final response = await dio.post(
      ApiConstants.login,
        data: data,
      );
      debugPrint(response.data);
    } on DioException catch (e) {
      debugPrint(e.toString());
    }
  }
}
