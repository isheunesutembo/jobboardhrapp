import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/core/usecase/use_case.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/domain/use_case/create_vacancy_usecase.dart';
import 'package:jobboardhrapp/features/vacancies/domain/use_case/getting_vacancy_usecase.dart';
part 'vacancy_state.dart';
part 'vacancy_event.dart';

class VacancyBloc extends Bloc<VacancyEvent, VacancyState> {
  final CreateVacancyUseCase _createVacancyUseCase;
  final GettingVacancyUsecase _gettingVacancyUsecase;

  VacancyBloc({
    required CreateVacancyUseCase createVacancyUseCase,
    required GettingVacancyUsecase gettingVacancyUsecase,
  }) : _createVacancyUseCase = createVacancyUseCase,
       _gettingVacancyUsecase = gettingVacancyUsecase,
       super(VacancyInitial()) {
    on<CreateVacancy>(_onCreatingVacancy);
    on<GetVacancies>(_onGettingVacancyByCompanyId);
  }
  void _onCreatingVacancy(
    CreateVacancy event,
    Emitter<VacancyState> emit,
  ) async {
    emit(VacancyLoading());
    final Either<Failure, VacancyModel> res = await _createVacancyUseCase(
      CreateVacancyParams(
        title: event.title,
        description: event.description,
        requirements: event.requirements,
        skillTags: event.skillTags,
        experience: event.experience,
        salary: event.salary,
        category: event.category,
      ),
    );

    switch (res) {
      case Left(value: final failure):
        emit(VacancyFailure(failure.message));

      case Right(value: final success):
        emit(CreateVacancySuccess(success));
    }
  }

  void _onGettingVacancyByCompanyId(
    GetVacancies event,
    Emitter<VacancyState> emit,
  ) async {
    emit(VacancyLoading());

    final res = await _gettingVacancyUsecase(NoParams());

    switch (res) {
      case Left(value: final failure):
        emit(VacancyFailure(failure.message));

      case Right(value: final success):
        emit(GettingVacanciesSuccess(success));
    }
  }
}
