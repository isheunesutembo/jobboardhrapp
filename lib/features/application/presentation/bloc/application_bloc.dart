
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/application/domain/usecase/get_application_use_case.dart';
import 'package:jobboardhrapp/features/auth/presentation/bloc/auth_bloc.dart';
part 'application_state.dart';
part 'application_event.dart';


class ApplicationBloc extends Bloc<ApplicationEvent,ApplicationState>{
  final GetApplicationUseCase _getApplicationUseCase;

  ApplicationBloc({
    required GetApplicationUseCase getApplicationUseCase
  }):_getApplicationUseCase=getApplicationUseCase,super(ApplicationInitial()){
    on<GetApplications>(_onGetApplications);
  }

  void _onGetApplications(GetApplications event ,Emitter<ApplicationState>emit)async{
    emit(ApplicationLoading());

    final res =await _getApplicationUseCase(NoParams());

    switch(res){
      case Left(value:final failure):
      emit(ApplicationFailure(failure.message));
      case Right(value:final success):
      emit(ApplicationSuccess(success));
    }
  }
}
