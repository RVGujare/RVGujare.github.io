import 'package:flutter/material.dart';
import 'package:mysite/app/sections/contact/contact.dart';
import 'package:mysite/app/sections/home/home.dart';
import 'package:mysite/app/sections/project/project.dart';

import 'package:mysite/app/widgets/footer.dart';

import '../sections/about/about.dart';
import '../sections/education/education.dart';
import '../sections/skills/skills.dart';

class BodyUtils {
  static List<Widget> views = [
    const HomePage(),
    const About(),
    const Education(),
    Skills(),
    const Project(),
    const Contact(),
    const Footer(),
  ];
}
