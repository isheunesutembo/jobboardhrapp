part of 'company_profile_bloc.dart';

@immutable
sealed class CompanyProfileEvent {}

final class UpdateCompanyProfileEvent extends CompanyProfileEvent {
  final String name;
  final String address;
  final String phoneNumber;
  final String logo;

  UpdateCompanyProfileEvent({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.logo,
  });

}
final class GetCompanyProfileEvent extends CompanyProfileEvent{
  
  GetCompanyProfileEvent();

}
