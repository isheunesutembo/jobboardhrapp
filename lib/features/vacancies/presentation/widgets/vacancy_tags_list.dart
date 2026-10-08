import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/vacancy_tags.dart';
@immutable
class VacancyTagsList extends StatelessWidget {
 final  VacancyModel vacancy;
 const  VacancyTagsList({super.key,required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: vacancy.skillTags!.length,itemBuilder: (context,index){
        return VacancyTags(tag: vacancy.skillTags![index]);
      
      }),
    );

  }
}