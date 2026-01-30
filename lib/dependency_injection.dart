

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/auth_repository.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
final serviceLocator=GetIt.instance;

Future<void>initDependencies()async{
  _initAuth();
  serviceLocator.registerSingleton(()=>http.Client());
  serviceLocator.registerSingleton(()=>SharedPreferences.getInstance());
  serviceLocator.registerLazySingleton(()=>LocalAuthRepository(serviceLocator()));
}

void _initAuth(){

  //Datasource
  serviceLocator..registerFactory<AuthRemoteDataSource>(()=>AuthRemoteDataSourceImpl(serviceLocator(),serviceLocator()),)
  //Repository
  ..registerFactory<AuthRepository>(()=>AuthRepositoryImpl(serviceLocator()))

  //Usecases
  ..registerFactory(()=>CompanySignUpUsecase(serviceLocator()))

  ..registerFactory(()=>CompanyLogInUseCase(serviceLocator()))

  ..registerLazySingleton(()=>AuthBloc(companyLogInUseCase: serviceLocator(), comapnySignUpUseCase: serviceLocator()));
}