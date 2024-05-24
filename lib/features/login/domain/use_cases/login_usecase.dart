import 'package:dartz/dartz.dart';
import 'package:flutter_bricks_folder_structure/features/login/domain/entities/failures/main_failure.dart';
import 'package:injectable/injectable.dart';

import '../repositories/login_repo.dart';

@lazySingleton
class LoginUseCase {
  final LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  Future<Either<MainFailure, Unit>> call(
      {required String username, required String password}) async {
    return await loginRepo.login(username: username, password: password);
  }
}
