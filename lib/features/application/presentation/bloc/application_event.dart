part of 'application_bloc.dart';



@immutable
sealed class ApplicationEvent{
  
}

final class GetApplications extends ApplicationEvent{
  
}

@immutable
final class UpdateApplicationStatus extends ApplicationEvent{
  final String applicationId;
  final String status;
  UpdateApplicationStatus({required this.applicationId,required this.status});
}