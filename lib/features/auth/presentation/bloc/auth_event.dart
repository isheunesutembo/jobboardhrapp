
part of 'auth_bloc.dart';


@immutable
sealed class AuthEvent {}

final class AuthSignUp extends AuthEvent{
  final String email;
  final String password;
  final String name;
  final String address;
  final String phoneNumber;

  AuthSignUp({
    required this.email,
    required this.password,
    required  this.name,
    required this.address,
    required this.phoneNumber
  });
}

final class AuthLogin extends AuthEvent{
  final String email;
  final String password;

  AuthLogin({
    required this.email,
    required this.password
  });
}

final class AuthUserLoggedIn extends AuthEvent{

}