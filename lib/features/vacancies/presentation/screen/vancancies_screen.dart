import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/bloc/vacancy_bloc.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/empy_view.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/vacancies_list.dart';
import 'package:jobboardhrapp/util/color.dart';
import 'package:jobboardhrapp/util/error_text.dart';
import 'package:jobboardhrapp/util/loader.dart';

class VancanciesScreen extends StatelessWidget {
  const VancanciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Vacancies",style: TextStyle(
          color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
        ),),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<VacancyBloc,VacancyState>(
        buildWhen: (previous,current)=>
        current is VacancyLoading||
        current is GettingVacanciesSuccess||
        current is VacancyFailure,builder: (context,state){


          if(state is VacancyLoading){
            return const Loader();
          }
          if(state is VacancyFailure){
            return ErrorText( error: state.message);
          }
          if(state is GettingVacanciesSuccess){
            if(state.vacancyModel.isEmpty){
              return const EmptyView();
            }
           return VacanciesList(vacancies: state.vacancyModel);
          }

          return const SizedBox.shrink();
        
        
       
       
      })
    );
  }
}