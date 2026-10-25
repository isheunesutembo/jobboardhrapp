part of 'company_profile_bloc.dart';

@immutable
sealed class CompanyProfileState{

}

final class CompanyProfileInitial extends CompanyProfileState{

}
final class CompanyProfileLoading extends CompanyProfileState{

}

final class UpdateCompanyProfileSuccess extends CompanyProfileState{
 final CompanyModel companyProfile;
  UpdateCompanyProfileSuccess(this.companyProfile);
}
final class GettingCompanyProfileSuccess extends CompanyProfileState{
  final CompanyModel companyModel;
  GettingCompanyProfileSuccess(this.companyModel);
}
final class GettingCompanyProfileFailure extends CompanyProfileState{
  final String message;
  GettingCompanyProfileFailure(this.message);
}
