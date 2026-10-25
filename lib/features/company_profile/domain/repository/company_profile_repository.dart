import 'package:fpdart/fpdart.dart' hide Failure;
import 'package:jobboardhrapp/core/error/failures.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';

abstract interface class CompanyProfileRepository {
  Future<Either<Failure, CompanyModel>> getCompanyProfile();

  Future<Either<Failure, CompanyModel>> updateCompanyInfo(
    String name,
    String address,
    String phoneNumber,
  );
}
