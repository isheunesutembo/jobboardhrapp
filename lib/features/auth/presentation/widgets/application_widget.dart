import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/auth/presentation/widgets/vacancy_application_widget.dart';

class ApplicationItemWidget extends StatelessWidget {
  ApplicationModel applicationModel;
   ApplicationItemWidget({super.key,required this.applicationModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 5,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Application Status:${applicationModel.status}",
                 style: const TextStyle(color: Colors.black,fontSize: 15,
                 fontWeight: FontWeight.bold),),
               ),
              
             ],
           ),
       //VacancyApplicationWidget( vacancy: applicationModel.vacancyId!,),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(applicationModel.company!.name.toString(),
            style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
          )
          ],),
        ),
      ),
    );
  }
}