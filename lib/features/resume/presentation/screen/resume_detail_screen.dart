import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:jobboardhrapp/features/resume/data/model/resume_model.dart';

class ResumeDetailScreen extends StatefulWidget {
 
  const ResumeDetailScreen({super.key,});

  @override
  State<ResumeDetailScreen> createState() => _ResumeDetailScreenState();
}

class _ResumeDetailScreenState extends State<ResumeDetailScreen> {
  String? pdfUrl;

  
  @override
  Widget build(BuildContext context) {
        final resume = ModalRoute.of(context)!.settings.arguments as ResumeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Detail Screen",
        style: TextStyle(color: Colors.black,
        fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(child: Column(
        children: [
          if(resume.fullResumePath.isNotEmpty)...{
            Expanded(child: Container(
              color: Colors.white,
              child: const PDF(
                enableSwipe: true,
                swipeHorizontal: true,
                backgroundColor: Colors.white
              ).cachedFromUrl(resume.fullResumePath),
            ))
          }else...{
              const Center(child: Text("Resume is not found"),)
            }

        ],
      )),
    );
  }
}