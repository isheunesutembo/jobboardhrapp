import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/is_user_logged_in.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerLazySingleton(() => http.Client());

  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerSingleton<SharedPreferences>(sharedPreferences);

  serviceLocator.registerLazySingleton<LocalAuthRepository>(
    () => LocalAuthRepository(serviceLocator<SharedPreferences>()),
  );

  _initAuth();
}

void _initAuth() {
  //Datasource
  serviceLocator
    ..registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        serviceLocator<http.Client>(),
        serviceLocator<LocalAuthRepository>(),
      ),
    )
    //Repository
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(serviceLocator<AuthRemoteDataSource>()),
    )
    //Usecases
    ..registerFactory(() => CompanySignUpUsecase(serviceLocator()))
    ..registerFactory(() => CompanyLogInUseCase(serviceLocator()))
    ..registerFactory(() => IsUserLoggedIn(serviceLocator<AuthRepository>()))
    ..registerLazySingleton(
      () => AuthBloc(
        companyLogInUseCase: serviceLocator<CompanyLogInUseCase>(),
        comapnySignUpUseCase: serviceLocator<CompanySignUpUsecase>(),
        isUserLoggedIn: serviceLocator<IsUserLoggedIn>(),
      ),
    );
}
