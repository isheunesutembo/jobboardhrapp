import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/company_profile/presentation/bloc/company_profile_bloc.dart';
import 'package:jobboardhrapp/util/color.dart';
import 'package:jobboardhrapp/util/error_text.dart';
import 'package:jobboardhrapp/util/loader.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Company Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.backgroundColor,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Edit",
          style: TextStyle(color: Colors.black,
          fontSize: 14,fontWeight: FontWeight.bold),),
        )],
      ),
      
      body: BlocBuilder<CompanyProfileBloc, CompanyProfileState>(
        buildWhen:
            (previous, current) =>
                current is CompanyProfileLoading ||
                current is GettingCompanyProfileSuccess ||
                current is GettingCompanyProfileFailure,
        builder: (content, state) {
          if (state is CompanyProfileLoading) {
            return const Loader();
          }
          if (state is GettingCompanyProfileFailure) {
            return ErrorText(error: state.message);
          }
          if (state is GettingCompanyProfileSuccess) {
            final logo = state.companyModel.logo;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: AppColors.backgroundColor,
                      backgroundImage:
                          (logo != null && logo.isNotEmpty)
                              ? NetworkImage(logo)
                              : const AssetImage("assets/images/person.png")
                                  as ImageProvider,
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Company Name: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          state.companyModel.name.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phone Number:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          state.companyModel.phoneNumber.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Address:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          state.companyModel.address.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
