import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/is_user_logged_in.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CompanyLogInUseCase _companyLogInUseCase;
  final CompanySignUpUsecase _companySignUpUsecase;
  final IsUserLoggedIn _isUserLoggedIn;

  AuthBloc({
    required CompanyLogInUseCase companyLogInUseCase,
    required CompanySignUpUsecase comapnySignUpUseCase,
    required IsUserLoggedIn isUserLoggedIn,
  }) : _companyLogInUseCase = companyLogInUseCase,
       _companySignUpUsecase = comapnySignUpUseCase,
       _isUserLoggedIn = isUserLoggedIn,
       super(AuthInitial()) {
    on<AuthSignUp>(_onAuthSignUp);
    on<AuthLogin>(_onAuthLogIn);
    on<AuthUserLoggedIn>(_onAuthUserLoggedIn);
  }

  void _onAuthUserLoggedIn(
    AuthUserLoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    final Either<Failure, bool> res = await _isUserLoggedIn(NoParams());
    switch (res) {
      case Left(value: final failure):
        emit(AuthFailure(failure.message));
      case Right(value: final isLoggedIn):
        if (isLoggedIn) {
          emit(AuthAuthenticated());
        } else {
          emit(AuthInitial());
        }
    }
  }

  void _onAuthSignUp(AuthSignUp event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final Either<Failure, CompanyModel> res = await _companySignUpUsecase(
      CompanySignUpParams(
        email: event.email,
        password: event.password,
        name: event.name,
        address: event.address,
        phoneNumber: event.phoneNumber,
      ),
    );

    switch (res) {
      case Left(value: final failure):
        emit(AuthFailure(failure.message));
      case Right(value: final success):
        emit(AuthSuccess(success));
    }
  }

  void _onAuthLogIn(AuthLogin event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final res = await _companyLogInUseCase(
      CompanyLogInParams(email: event.email, password: event.password),
    );
    switch (res) {
      case Left(value: final failure):
        emit(AuthFailure(failure.message));
      case Right(value: final success):
        emit(AuthSuccess(success));
    }
  }
}
