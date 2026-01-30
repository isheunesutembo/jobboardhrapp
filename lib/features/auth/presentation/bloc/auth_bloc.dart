import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CompanyLogInUseCase _companyLogInUseCase;
  final CompanySignUpUsecase _companySignUpUsecase;

  AuthBloc({
    required CompanyLogInUseCase companyLogInUseCase,
    required CompanySignUpUsecase comapnySignUpUseCase,
  }) : _companyLogInUseCase = companyLogInUseCase,
       _companySignUpUsecase = comapnySignUpUseCase,
       super(AuthInitial()) {
    on<AuthSignUp>(_onAuthSignUp);
    on<AuthLogin>(_onAuthLogIn);
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
