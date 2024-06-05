import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../changes/strings.dart';
import '../../../core/configs/others/space.dart';
import '../../widgets/custom_text_heading.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSectionHeading(text: "\nAbout"),
          Space.y(5.w)!,
          CustomSectionSubHeading(text: aboutText),
          Space.y(2.w)!,
        ],
      ),
    );
  }
}
