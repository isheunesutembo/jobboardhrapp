import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/application/data/models/application_model.dart';
import 'package:jobboardhrapp/features/application/presentation/bloc/application_bloc.dart';
import 'package:jobboardhrapp/features/application/presentation/widgets/resume_widget.dart';
import 'package:jobboardhrapp/features/application/presentation/widgets/user_widget.dart';
import 'package:jobboardhrapp/features/auth/presentation/widgets/vacancy_application_widget.dart';
import 'package:jobboardhrapp/features/resume/presentation/screen/resume_detail_screen.dart';
import 'package:jobboardhrapp/util/loader.dart';
import 'package:jobboardhrapp/util/utils.dart';

class ApplicationItemWidget extends StatelessWidget {
  ApplicationModel applicationModel;
  ApplicationItemWidget({super.key, required this.applicationModel});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApplicationBloc,ApplicationState>(builder: (context,state){
      if(state is ApplicationLoading){
        return const Loader();
      }

     return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserWidget(user: applicationModel.userId!),
              ),
              
              VacancyApplicationWidget(vacancy: applicationModel.vacancyId!),
            
              if (applicationModel.resume != null) ...{
                Padding(padding: EdgeInsets.all(8),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text("Resume",style: TextStyle(color: Colors.black,
                  fontSize: 15,fontWeight: FontWeight.bold),),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    ResumeDetailScreen(),settings: RouteSettings(
                      arguments: applicationModel.resume
                    )));
                  },child: ResumeWidget(resume: applicationModel.resume!)),
                ],),)
                
              } else ...{
                SizedBox(),
              },
              if(applicationModel.status=="Pending")
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<ApplicationBloc>()
                        .add(UpdateApplicationStatus(applicationId: applicationModel.id.toString(), status: "Accepted"));
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Accept ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                          context.read<ApplicationBloc>()
                        .add(UpdateApplicationStatus(applicationId: applicationModel.id.toString(), status: "Rejected"));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Reject ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    }, listener: (context,state){
      if (state is ApplicationFailure){
        showSnackBar(context, state.message);
      }else if (state is UpdateApplicationStateSuccess){
        showSnackBar(context, state.message);
      }
    });
  }
}
