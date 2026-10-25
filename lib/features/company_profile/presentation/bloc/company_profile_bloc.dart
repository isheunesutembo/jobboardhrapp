

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'package:jobboardhrapp/features/company_profile/domain/use_case/get_company_use_case.dart';
import 'package:jobboardhrapp/features/company_profile/domain/use_case/update_company_profile_usecase.dart';
part 'company_profile_event.dart';
part 'company_profile_state.dart';
class CompanyProfileBloc extends Bloc<CompanyProfileEvent,CompanyProfileState>{
final CreateUpdateCompanyUseCase _createUpdateCompanyUseCase;
final GetCompanyProfileUseCase _getCompanyProfileUseCase;
CompanyProfileBloc({required CreateUpdateCompanyUseCase createUpdateCompanyUseCase,
required GetCompanyProfileUseCase getCompanyUseCase}):_createUpdateCompanyUseCase=createUpdateCompanyUseCase,
_getCompanyProfileUseCase=getCompanyUseCase,super(CompanyProfileInitial()){
  on<UpdateCompanyProfileEvent>(_onUpdateCompanyProfile);
  on<GetCompanyProfileEvent>(_onGettingCompanyProfile);

  
  }
void _onUpdateCompanyProfile(UpdateCompanyProfileEvent event,
  Emitter<CompanyProfileState>emit,)async{
    emit(CompanyProfileLoading());
    final Either<Failure,CompanyModel>res=await _createUpdateCompanyUseCase(
      UpdateCompanyProfileParams(
      address: event.address,
      phoneNumber: event.phoneNumber,
      name: event.name,
      logo: event.logo
    )
    );
    switch(res){
      case Left(value:final failure):
      emit( GettingCompanyProfileFailure(failure.message) );
      case Right(value:final success):
      emit(GettingCompanyProfileSuccess(success));
    }
  }

  void _onGettingCompanyProfile(
    GetCompanyProfileEvent event,
    Emitter<CompanyProfileState>emit
  )async{
     
    emit(CompanyProfileLoading());
    final res =await _getCompanyProfileUseCase(NoParams());
    switch(res){
      case Left(value:final failure):
      emit(GettingCompanyProfileFailure(failure.message));
      case Right(value:final success):
      emit(GettingCompanyProfileSuccess(success));
    }
}

}