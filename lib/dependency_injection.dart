import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/application/data/datasource/application_remote_data_source.dart';
import 'package:jobboardhrapp/features/application/data/repository/application_repository.dart';
import 'package:jobboardhrapp/features/application/domain/repository/application_repository.dart';
import 'package:jobboardhrapp/features/application/domain/usecase/get_application_use_case.dart';
import 'package:jobboardhrapp/features/application/domain/usecase/update_application_status_usecase.dart';
import 'package:jobboardhrapp/features/application/presentation/bloc/application_bloc.dart';
import 'package:jobboardhrapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/is_user_logged_in.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:jobboardhrapp/features/vacancies/data/datasource/vacancy_remote_data_source.dart';
import 'package:jobboardhrapp/features/vacancies/data/repository/vacancy_repository_impl.dart';
import 'package:jobboardhrapp/features/vacancies/domain/repository/vacancy_repository.dart';
import 'package:jobboardhrapp/features/vacancies/domain/use_case/create_vacancy_usecase.dart';
import 'package:jobboardhrapp/features/vacancies/domain/use_case/getting_vacancy_usecase.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/bloc/vacancy_bloc.dart';
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
  _initVacancies();
  _initApplications();
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

void _initVacancies() {
  //Datasource
  serviceLocator
    ..registerFactory<VacancyRemoteDataSource>(
      () => VacancyRemoteDataSourceImpl(
        serviceLocator<http.Client>(),
        serviceLocator<LocalAuthRepository>(),
      ),
    )
    //Repository
    ..registerFactory<VacancyRepository>(
      () => VacancyRepositoryImpl(serviceLocator<VacancyRemoteDataSource>()),
    )
    //Usecases
    ..registerFactory(() => CreateVacancyUseCase(serviceLocator()))
    ..registerFactory(() => GettingVacancyUsecase(serviceLocator()))
    ..registerLazySingleton(
      () => VacancyBloc(
        createVacancyUseCase: serviceLocator<CreateVacancyUseCase>(),
        gettingVacancyUsecase: serviceLocator<GettingVacancyUsecase>(),
      ),
    );
}

void _initApplications() {
  //Datasource
  serviceLocator
    ..registerFactory<ApplicationRemoteDataSource>(
      () => ApplicationRemoteDataSourceImpl(
        serviceLocator<http.Client>(),
        serviceLocator<LocalAuthRepository>(),
      ),
    )
    //Repository
    ..registerFactory<ApplicationRepository>(
      () => ApplicationRepositoryImpl(
        serviceLocator<ApplicationRemoteDataSource>(),
      ),
    )
    //Usecases
    ..registerFactory(() => GetApplicationUseCase(serviceLocator()))
    ..registerFactory(()=>UpdateApplicationUseCase(serviceLocator()))
    ..registerLazySingleton(
      () => ApplicationBloc(
        getApplicationUseCase: serviceLocator<GetApplicationUseCase>(),
        updateApplicationUsecase: serviceLocator<UpdateApplicationUseCase>()
      ),
    );
}
