import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysite/app/utils/contact_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: Space.all(1, 1),
      // padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(30)),
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nGet in Touch"),
          Space.y(5.w)!,

          Container(
            padding: EdgeInsets.all(size.width * 0.05),
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [blackColorShadow],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/imgs/email.png',
                              width: 25.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              email,
                              style: GoogleFonts.oswald(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'rutujagujare31@gmail.com',
                              style: TextStyle(
                                  color: Color.fromRGBO(166, 177, 187, 1),
                                  height: 1,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: size.width * 0.2,
                            ),
                            Image.asset(
                              'assets/imgs/phone.png',
                              width: 25.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              phone,
                              style: GoogleFonts.oswald(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              '+91 9324272756',
                              style: TextStyle(
                                  color: Color.fromRGBO(166, 177, 187, 1),
                                  height: 1,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Space.y(2.w)!,
                Container(color: theme.lineColor.withOpacity(0.2), height: 1),
                Space.y(2.w)!,
                Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 50,
                    children: contactUtils
                        .asMap()
                        .entries
                        .map((e) => IconButton(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                              icon: Image.network(
                                e.value.icon,
                                color: theme.textColor,
                              ),
                              onPressed: () => openURL(e.value.url),
                              highlightColor: Colors.white54,
                              iconSize: 41,
                            ))
                        .toList()),
              ],
            ),
          ),
          // Space.y!,
        ],
      ),
    );
  }
}
