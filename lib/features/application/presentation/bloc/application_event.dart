part of 'application_bloc.dart';



@immutable
sealed class ApplicationEvent{
  
}

final class GetApplications extends ApplicationEvent{
  
}

@immutable
final class UpdateApplicationStatus extends ApplicationEvent{
  String applicationId;
  String status;
  UpdateApplicationStatus({required this.applicationId,required this.status});
}