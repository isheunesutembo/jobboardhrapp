
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/company_profile/presentation/bloc/company_profile_bloc.dart';
import 'package:jobboardhrapp/features/home/screens/home_screen.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/bloc/vacancy_bloc.dart';
import 'package:jobboardhrapp/util/color.dart';
import 'package:jobboardhrapp/util/custom_icon_widget.dart';
import 'package:jobboardhrapp/util/custom_text_field.dart';
import 'package:jobboardhrapp/util/loader.dart';
import 'package:jobboardhrapp/util/utils.dart';

class AddVacancyScreen extends StatefulWidget {
  static MaterialPageRoute<dynamic> route() => MaterialPageRoute(builder: (context) => AddVacancyScreen());
  const AddVacancyScreen({super.key});

  @override
  State<AddVacancyScreen> createState() => _AddVacancyScreenState();
}

class _AddVacancyScreenState extends State<AddVacancyScreen> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _addressController = TextEditingController();
  
  

  bool isAsyncCallProcess = false;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Add Vacancy",
        style: TextStyle(color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold),),
      ),
      body: BlocConsumer<CompanyProfileBloc, CompanyProfileState>(
        builder: (context, state) {
          if (state is VacancyLoading) {
            return const Loader();
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomCircleIconWidget(
                          icon: Image.asset("assets/images/backicon.png"))),
              
                ],
              ),
            ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          controller: _nameController,
                          hintText: "Name:",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 80,
                          child: CustomTextField(
                            hintText: "Phone Number:",
                            controller: _phoneNumberController,
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (validateAndSave()) {
                                context.read<CompanyProfileBloc>().add(
                                  UpdateCompanyProfileEvent(name: _nameController.text, address: _addressController.text,  phoneNumber:_phoneNumberController.text, logo: "")
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Upload Vacancy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {
          if (state is GettingCompanyProfileFailure) {
            showSnackBar(context, state.message);
          } else if (state is CreateVacancySuccess) {
            Navigator.pushAndRemoveUntil(
              context,
              HomeScreen.route(),
              (route) => false,
            );
          }
        },
      ),
    );
  }
}
