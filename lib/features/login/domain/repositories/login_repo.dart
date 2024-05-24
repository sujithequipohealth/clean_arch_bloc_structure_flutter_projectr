import 'package:dartz/dartz.dart';
import 'package:flutter_bricks_folder_structure/features/login/domain/entities/failures/main_failure.dart';

abstract class LoginRepo {
  Future<Either<MainFailure, Unit>> login(
      {required String username, required String password});
}
