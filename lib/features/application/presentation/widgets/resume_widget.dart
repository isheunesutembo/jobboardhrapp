import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobboardhrapp/features/resume/data/model/resume_model.dart';

class ResumeWidget extends StatefulWidget {
  ResumeModel resume;
  ResumeWidget({super.key, required this.resume});

  @override
  State<ResumeWidget> createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 113,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/pdficon.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  widget.resume.title??"",
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}