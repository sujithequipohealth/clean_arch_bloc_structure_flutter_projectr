part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {
  const LoginEvent();
}

/// API EVENTS
class StartLogin extends LoginEvent {
  final String email;
  final String password;

  const StartLogin({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
