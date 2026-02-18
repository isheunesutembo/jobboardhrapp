import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/dependency_injection.dart';
import 'package:jobboardhrapp/features/application/presentation/bloc/application_bloc.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:jobboardhrapp/features/auth/presentation/screen/log_in_screen.dart';
import 'package:jobboardhrapp/features/home/screens/home_screen.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/bloc/vacancy_bloc.dart';
import 'package:jobboardhrapp/util/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => serviceLocator<AuthBloc>()..add(AuthUserLoggedIn()),
        ),
        BlocProvider(create: (_) => serviceLocator<VacancyBloc>()..add(GetVacancies())),
        BlocProvider(create: (_) => serviceLocator<ApplicationBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: AppColors.backgroundColor,
          onPrimary: AppColors.backgroundColor,
        ),
      ),
      home: BlocSelector<AuthBloc, AuthState, bool>(
        selector: (state) {
          return state is AuthAuthenticated;
        },
        builder: (context, isLoggedIn) {
          if (isLoggedIn) {
            return const HomeScreen();
          }
          return SignInScreen();
        },
      ),
    );
  }
}
