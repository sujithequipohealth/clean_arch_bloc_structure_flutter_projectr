import 'package:dartz/dartz.dart';
import 'package:flutter_bricks_folder_structure/features/login/domain/entities/failures/main_failure.dart';
import 'package:flutter_bricks_folder_structure/features/login/domain/repositories/login_repo.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/login_local_data_source.dart';
import '../data_sources/login_remote_data_source.dart';

@LazySingleton(as: LoginRepo)
class AddMoneyRepoImpl implements LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;
  final LoginLocalDataSource loginLocalDataSource;

  AddMoneyRepoImpl(this.loginRemoteDataSource, this.loginLocalDataSource);
  @override
  Future<Either<MainFailure, Unit>> login(
      {required String username, required String password}) async {
    try {
      await loginRemoteDataSource.login(username, password);
      loginLocalDataSource.storeUserData(
          tokenAccess: "tokenAccess ", tokenRefresh: "tokenRefresh ");
      return const Right(unit);
    } on Exception catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
