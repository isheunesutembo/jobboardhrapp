import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/application/presentation/screen/application_screen.dart';
import 'package:jobboardhrapp/features/auth/presentation/screen/company_profile_screen.dart';
import 'package:jobboardhrapp/features/vacancies/presentation/screen/vancancies_screen.dart';

class HomeScreen extends StatefulWidget {
   static route() => MaterialPageRoute(builder: (context) => HomeScreen());
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  void _onItemTap(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  List<Widget>pages=[
    VancanciesScreen(),
    ApplicationsScreen(),
    CompanyProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.black,onPressed: (){

      },child: Icon(Icons.edit,color: Colors.white,),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTap,
        unselectedItemColor: Colors.black,items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.email),label: "Applications"),
             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ]),
        body: pages[selectedIndex],
    );
  }
}