
part of 'auth_bloc.dart';


@immutable
sealed class AuthState{
  const AuthState();
}

final class AuthInitial extends AuthState{}
final class AuthLoading extends AuthState{
}
final class AuthSuccess extends AuthState{
  final CompanyModel companyModel;
  AuthSuccess(this.companyModel);
}

final class AuthFailure extends AuthState{
  final String message;
  const AuthFailure(this.message);
}