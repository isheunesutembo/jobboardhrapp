import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/vacancy_tags_list.dart';

class VacancyItemWidget extends StatelessWidget {
  VacancyModel vacancy;
  VacancyItemWidget({super.key, required this.vacancy});

  @override
  Widget build(BuildContext context) {
   
    return Card(
      elevation: 5,
      color: Colors.white,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                vacancy.title.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\$${vacancy.salary}",
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
            ),
           
                  
            const SizedBox(
              height: 10,
            ),
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: VacancyTagsList(vacancy: vacancy),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                     vacancy.company!.logo!=null?   CircleAvatar(backgroundColor: Colors.white,radius: 30,backgroundImage: NetworkImage(vacancy.company!.logo.toString()),):
                 const CircleAvatar(backgroundColor: Colors.white,radius: 30,backgroundImage:AssetImage("assets/images/person.png") ),
            Text(vacancy.company!.name.toString(),
            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),)
          ],),
        )
           
          ],
        ),
      ),
    );
  }
}