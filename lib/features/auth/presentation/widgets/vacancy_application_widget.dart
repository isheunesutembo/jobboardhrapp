
import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/vacancies/data/model/vacancy_model.dart';

class VacancyApplicationWidget extends StatelessWidget {
  VacancyModel vacancy;
   VacancyApplicationWidget({super.key,required this.vacancy});

  @override
  Widget build(BuildContext context,) {
   

      return SizedBox(
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
           
          ],
        ),
      );
    
  }
}