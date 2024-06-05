import 'package:flutter/material.dart';
import 'package:mysite/app/sections/education/workbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../core/configs/others/space.dart';
import '../../widgets/custom_text_heading.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(14.w, 0, 10.w, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSectionHeading(text: "\nEducation/Experience"),
          Space.y(5.w)!,
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 1,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        Center(
                          child: VerticalDivider(
                            color: Color(0xff64FFDA),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 15,
                          ),
                        ),
                        Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF09FBD3),
                                child: FaIcon(FontAwesomeIcons.building,
                                    color: Colors.black),
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xFFFE53BB),
                                child: FaIcon(FontAwesomeIcons.graduationCap,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xFF09FBD3),
                                child: FaIcon(FontAwesomeIcons.school,
                                    color: Colors.black),
                              ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    height: size.height * 1,
                    child: WorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
