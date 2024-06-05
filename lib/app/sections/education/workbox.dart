import 'package:flutter/material.dart';
import 'package:mysite/app/sections/education/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "App Development Intern",
          subTitle:
              "I am currently working as an App Development Intern \nat FuseBytes Newage Technologies LLP",
          duration: "June(2023) - Present",
        ),
        WorkCustomData(
          title: "Bachelor of Engineering",
          subTitle:
              "I am currently pursuing Bachelor's Degree in Computer Engineering \nat Vidyalankar Institute of Technology.\nAverage CGPA: 10.00",
          duration: "2021 - 2025",
        ),
        WorkCustomData(
          title: "Higher Secondary School",
          subTitle:
              "I completed my higher secondary education from Changu Kana Thakur Vidyalaya \nconducted by Maharashtra State Board.\nPercentage: 98.67",
          duration: "2019 - 2021",
        ),
      ],
    );
  }
}
