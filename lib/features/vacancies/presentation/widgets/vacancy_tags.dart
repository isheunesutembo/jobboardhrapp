import 'package:flutter/material.dart';
@immutable
class VacancyTags extends StatelessWidget {
 final  String tag;
  const  VacancyTags({super.key,required this.tag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Chip(backgroundColor: Colors.white,label: Text(tag,style:const TextStyle(color: Colors.black),),),
    );
  }
}