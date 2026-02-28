import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/home/screens/home_screen.dart';
import 'package:jobboardhrapp/features/vacancies/domain/use_case/create_vacancy_usecase.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/bloc/vacancy_bloc.dart';
import 'package:jobboardhrapp/util/color.dart';
import 'package:jobboardhrapp/util/custom_text_field.dart';
import 'package:jobboardhrapp/util/loader.dart';
import 'package:jobboardhrapp/util/utils.dart';

class AddVacancyScreen extends StatefulWidget {
    static route() => MaterialPageRoute(builder: (context) => AddVacancyScreen());
  const AddVacancyScreen({super.key});

  @override
  State<AddVacancyScreen> createState() => _AddVacancyScreenState();
}

class _AddVacancyScreenState extends State<AddVacancyScreen> {
  final _titleController=TextEditingController();
  final _descriptionController=TextEditingController();
  final _requirementsController=TextEditingController();
   final _skillTagsController=TextEditingController();
      final _experienceController=TextEditingController();
      final _salaryController=TextEditingController();
      final _benefitsController=TextEditingController();
  List<String>skillTags=[];

  void _addSkillTags() {
    if (_skillTagsController.text.isNotEmpty) {
      setState(() {
        skillTags.add(_skillTagsController.text);
        _requirementsController.clear();
      });
    }
  }
  void _removeSkillTags(int index) {
    setState(() {
      skillTags.removeAt(index);
    });
  }
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
      appBar: AppBar(elevation: 0, automaticallyImplyLeading: false,
      title: Text("Add Vacancy"),),
      body: BlocConsumer<VacancyBloc,VacancyState>(builder: (context,state){
        if (state is VacancyLoading) {
            return const Loader();
          }
           return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          controller: _titleController,
                          hintText: "Job Title",
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Description:",
                          controller: _descriptionController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Job Requirements:",
                          controller: _requirementsController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _skillTagsController,
                          onFieldSubmitted: (value)=>_addSkillTags(),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText:"Add Skill Tags",
                            hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13), 
                      suffixIcon: IconButton(onPressed: _addSkillTags, icon: 
                      Icon(Icons.add,color: Colors.black,))  ,
                           label: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Add Requirements"),
                  ),
                  labelStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),  
                       border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(10)),                ),
                        ),
                      ),
                      if (skillTags.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Skill Tags:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: ListView.builder(
                  itemCount: skillTags.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(skillTags[index]),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        onPressed: () => _removeSkillTags(index),
                      ),
                    );
                  },
                ),
              ),
            ],
            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Experience:",
                          controller: _experienceController,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Salary:",
                          controller: _salaryController,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Benefits:",
                          controller: _benefitsController,
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
                                context.read<VacancyBloc>().add(
                                  CreateVacancy(
                                   title: _titleController.text,
                                   description: _descriptionController.text,
                                   requirements: _requirementsController.text,
                                   skillTags: skillTags,
                                   salary: _salaryController.text,
                                   category:"67ac75c7ab91dce83dce5e5d" 
                                  ),
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
      }, listener: (context,state){
        if(state is VacancyFailure){
          showSnackBar(context, state.message);
        }else if (state is CreateVacancySuccess){
          Navigator.pushAndRemoveUntil(
              context,
              HomeScreen.route(),
              (route) => false,
            );
        }
      }),
    );
  }
}