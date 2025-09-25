import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_login.dart';
import 'package:jobboardhrapp/features/auth/domain/usecases/company_signup.dart';

part 'auth_event.dart';
part 'auth_state.dart';
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CompanyLogInUseCase _companyLogInUseCase;
  final CompanySignUpUsecase _companySignUpUsecase;
  AuthBloc({
    required CompanyLogInUseCase companyLogInUsecase,
    required CompanySignUpUsecase companySignUpUsecase,
  }) : _companyLogInUseCase = companyLogInUsecase,
       _companySignUpUsecase = companySignUpUsecase,super(AuthInitial()){
        on<AuthEvent>((_,emit)=>emit(AuthLoading()));
        on<AuthEvent>(_onAuthSignUp);
        on<AuthEvent>(_onAuthLogIn);
       }


        void _onAuthSignUp(AuthSignUp event,
       Emitter<AuthState>emit)async{
        final res=await _companySignUpUsecase(
         CompanySignUpParams(email: event.email, password: event.password, name: event.name, address: event.address, phoneNumber: event.phoneNumber)
        );
        res.fold(
          (l)=>emit(AuthFailure(l.message)),
          (r)=>
        );

       }


      
}
