part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  loaded,
  error,
}

@immutable
class LoginState extends Equatable {
  //final LoginStatus status;
  final Option<Either<MainFailure, Unit>> logiunResultOption;

  const LoginState({
    //required this.status,
    this.logiunResultOption = const None(),
  });

  static LoginState initial() => const LoginState(logiunResultOption: None());

  LoginState copyWith({
    //LoginStatus? status,
    Option<Either<MainFailure, Unit>>? logiunResultOption,
  }) {
    return LoginState(
      //status: status ?? this.status,
      logiunResultOption: logiunResultOption ?? this.logiunResultOption,
    );
  }

  @override
  List<Object?> get props => [logiunResultOption];
}
