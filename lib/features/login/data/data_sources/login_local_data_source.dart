import 'package:flutter/cupertino.dart';
import 'package:flutter_bricks_folder_structure/core/constants/app_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class LoginLocalDataSource {
  final SharedPreferences prefs;

  LoginLocalDataSource(this.prefs);

  void storeUserData(
      {required String tokenAccess, required String tokenRefresh}) {
    debugPrint("Storing user data");
    prefs.setString(AppConstant.tokenAccess, tokenAccess);
    prefs.setString(AppConstant.tokenRefresh, tokenRefresh);
  }
}
