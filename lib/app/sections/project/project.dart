import 'package:flutter/material.dart';
import 'project_desktop.dart';
import 'project_mobile.dart';
import 'package:mysite/core/res/responsive.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Responsive(
    //   // mobile: ProjectMobileTab(),
    //   // tablet: ProjectMobileTab(),
    //   desktop: ProjectDesktop(),
    // );
    return const ProjectDesktop();
  }
}
