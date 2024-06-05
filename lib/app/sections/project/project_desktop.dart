import 'package:flutter/material.dart';
import 'package:mysite/app/utils/project_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDesktop extends StatefulWidget {
  const ProjectDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectDesktop> createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomSectionHeading(text: "\nProject"),
            Space.y(5.w)!,
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WEBSITE",
                        style: GoogleFonts.oswald(
                          color: Color(0xFFFE53BB),
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "FOOD DELIVERY\nWEBSITE",
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 35.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Our food ordering app revolutionizes the college dining experience by empowering students to conveniently order meals from their canteen. Designed to streamline busy lunch breaks, the app enables swift ordering, allowing students to pre-order and pick up their meals without waiting in long queues. By bridging the gap between hunger and convenience, our app enhances the overall efficiency of mealtime for busy college-goers.",
                        style: TextStyle(
                          color: Color.fromRGBO(166, 177, 187, 1),
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/imgs/project.png",
                    // Set width for image on smaller screen
                    width: null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
