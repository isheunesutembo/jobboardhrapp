import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobboardhrapp/features/application/presentation/bloc/application_bloc.dart';
import 'package:jobboardhrapp/features/application/presentation/screen/application_list_screen.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/widgets/empy_view.dart';
import 'package:jobboardhrapp/util/color.dart';
import 'package:jobboardhrapp/util/error_text.dart';
import 'package:jobboardhrapp/util/loader.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({super.key});

  @override
  State<ApplicationsScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationsScreen> 
with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    _tabController = TabController(length: 3, vsync: this);
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(indicatorColor: Colors.red,controller: _tabController, tabs: const [
          Text(
            "Pending",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "Accepted",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "Rejected",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ]),
      ),
      
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<ApplicationBloc,ApplicationState>(buildWhen:(previous,current)=>
        current is ApplicationLoading ||
        current is GetApplicationSuccess|| current is ApplicationFailure
       ,builder: (context,state){
        if (state is ApplicationLoading){
          return const Loader();
        }
        if(state is ApplicationFailure){
          return ErrorText(error: state.message);
        }
        if (state is GetApplicationSuccess){
          if(state.applicationModel.isEmpty){
            return const EmptyView();

          }
           return ApplicationListScreen(state.applicationModel);
        }
       
      return const SizedBox.shrink();
      },),
    );
  }
}