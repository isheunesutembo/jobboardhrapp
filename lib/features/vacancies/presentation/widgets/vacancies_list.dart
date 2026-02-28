import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/vacancy_item_widget.dart';

class VacanciesList extends StatelessWidget {
  List <VacancyModel>vacancies;
   VacanciesList({super.key,required this.vacancies});

  @override
  Widget build(BuildContext context) {

   
          return ListView.builder(
              scrollDirection: Axis.vertical,
              physics:const BouncingScrollPhysics(),
              itemCount: vacancies.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                    /*  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VacancyDetailsScreen(
                                ),settings: RouteSettings(arguments: data[index])));
                                */
                    },
                    child: VacancyItemWidget(
                      vacancy: vacancies[index],
                    ));
              });
       
  }
}