import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/configs/others/space.dart';
import '../../widgets/custom_text_heading.dart';

List skillsList = [
  "assets/imgs/html.png",
  "assets/imgs/css.png",
  "assets/imgs/javascript.png",
  "assets/imgs/react_js.png",
  "assets/imgs/flutter.png",
  "assets/imgs/firestore.png",
  "assets/imgs/c.png",
  "assets/imgs/cpp.png",
  "assets/imgs/java.png",
  "assets/imgs/python.png",
  "assets/imgs/figma.png",
  "assets/imgs/git.png",
];

class Skills extends StatelessWidget {
  Skills({super.key});
  final CarouselController _controller = CarouselController();
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
            const CustomSectionHeading(text: "\nSkills"),
            Space.y(5.w)!,
            SizedBox(
              width: width,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.7,
                    height: height * 0.5,
                    child: CarouselSlider(
                      items: List.generate(
                        skillsList.length,
                        (index) => SizedBox(
                            height: height * 0.15,
                            width: width * 0.15,
                            child: Image.asset(skillsList[index])),
                      ),
                      options: CarouselOptions(
                          height: 500,
                          viewportFraction: 0.2,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayCurve: Curves.linear),
                      carouselController: _controller,
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
