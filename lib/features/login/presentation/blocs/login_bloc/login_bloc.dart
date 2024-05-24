import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/failures/main_failure.dart';
import '../../../domain/use_cases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is StartLogin) {
        // emit(LoginState(status: LoginStatus.loading));
        final result = await loginUseCase(
          username: event.email,
          password: event.password,
        );
        emit(
          state.copyWith(
            logiunResultOption: some(result),
          ),
        );
      }
    });
  }
}
