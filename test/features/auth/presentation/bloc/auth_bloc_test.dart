import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/is_user_logged_in.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([CompanyLogInUseCase, CompanySignUpUsecase, IsUserLoggedIn])
void main() {
  late AuthBloc authBloc;
  late MockCompanyLogInUseCase mockCompanyLogInUseCase;
  late MockCompanySignUpUsecase mockCompanySignUpUsecase;
  late MockIsUserLoggedIn mockIsUserLoggedIn;

  setUp(() {
    mockCompanyLogInUseCase = MockCompanyLogInUseCase();
    mockCompanySignUpUsecase = MockCompanySignUpUsecase();
    mockIsUserLoggedIn = MockIsUserLoggedIn();
    authBloc = AuthBloc(
      companyLogInUseCase: mockCompanyLogInUseCase,
      comapnySignUpUseCase: mockCompanySignUpUsecase,
      isUserLoggedIn: mockIsUserLoggedIn,
    );
  });

  group('AuthBloc', () {
    test('initial state should be AuthInitial', () {
      expect(authBloc.state, isA<AuthInitial>());
    });
    
    final tCompanyModel = CompanyModel(companyId: '1', name: 'Test', address: 'Address', phoneNumber: '123456');

    blocTest<AuthBloc, AuthState>(
      'emits [AuthLoading, AuthSuccess] when AuthLogin is added and login is successful',
      build: () {
        when(mockCompanyLogInUseCase(any)).thenAnswer(
          (_) async => Right(tCompanyModel),
        );
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthLogin(email: 'test@test.com', password: 'password')),
      expect: () => [
        isA<AuthLoading>(),
        isA<AuthSuccess>().having((s) => s.companyModel, 'companyModel', tCompanyModel),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthLoading, AuthFailure] when AuthLogin is added and login fails',
      build: () {
        when(mockCompanyLogInUseCase(any)).thenAnswer(
          (_) async => Left(Failure('Login failed')),
        );
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthLogin(email: 'test@test.com', password: 'password')),
      expect: () => [
        isA<AuthLoading>(),
        isA<AuthFailure>().having((s) => s.message, 'message', 'Login failed'),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthLoading, AuthSuccess] when AuthSignUp is added and registration is successful',
      build: () {
        when(mockCompanySignUpUsecase(any)).thenAnswer(
          (_) async => Right(tCompanyModel),
        );
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthSignUp(
        email: 'test@test.com',
        password: 'password',
        name: 'Test',
        address: 'Address',
        phoneNumber: '123456',
      )),
      expect: () => [
        isA<AuthLoading>(),
        isA<AuthSuccess>().having((s) => s.companyModel, 'companyModel', tCompanyModel),
      ],
    );

     blocTest<AuthBloc, AuthState>(
      'emits [AuthAuthenticated] when AuthUserLoggedIn is added and user is logged in',
      build: () {
        when(mockIsUserLoggedIn(any)).thenAnswer(
          (_) async => Right(true),
        );
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthUserLoggedIn()),
      expect: () => [
        isA<AuthAuthenticated>(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthInitial] when AuthUserLoggedIn is added and user is NOT logged in',
      build: () {
        when(mockIsUserLoggedIn(any)).thenAnswer(
          (_) async => Right(false),
        );
        return authBloc;
      },
      act: (bloc) => bloc.add(AuthUserLoggedIn()),
      expect: () => [
        isA<AuthInitial>(),
      ],
    );
  });
}
