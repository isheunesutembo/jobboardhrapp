part of 'application_bloc.dart';

@immutable

sealed class ApplicationState{

  const ApplicationState();
}
final class ApplicationInitial extends ApplicationState{}

final class ApplicationLoading extends ApplicationState{}

final class GetApplicationSuccess extends ApplicationState{
  final List<ApplicationModel> applicationModel;
  GetApplicationSuccess(this.applicationModel);
}

final class ApplicationFailure extends ApplicationState{
  final String message;
  const ApplicationFailure(this.message);
}
