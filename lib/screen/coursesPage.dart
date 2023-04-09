import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import '../widget/courseWidget.dart';
import '../widget/coursesCardWidget.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScrollLoopAutoScroll(
            scrollDirection: Axis.horizontal,
            duration: const Duration(seconds: 120),
            gap: 3,
            delay: const Duration(seconds: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CoursesCardWidget(),
                CoursesCardWidget(),
                CoursesCardWidget(),
                CoursesCardWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended Courses",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      hint: const Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      items: <String>[]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (v) {}),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CourseWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/web.jpg'),
                  logoImage: AssetImage("assets/images/shruti.jpg"),
                  label: 'Web Development',
                  subLabel: '\nCascading Style shee...',
                  description: '\nNo. of videos: 24',
                  subDescription: '\nCoursetime: 3.0 hours',
                  name: 'shruti Codes',
                  slogan: '\nInstructor',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/web.jpg'),
                  logoImage: AssetImage("assets/images/shruti.jpg"),
                  label: 'Web Development',
                  subLabel: '\nCascading Style shee...',
                  description: '\nNo. of videos: 24',
                  subDescription: '\nCoursetime: 3.0 hours',
                  name: 'shruti Codes',
                  slogan: '\nInstructor',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Latest Videos",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CourseWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/web.jpg'),
                  logoImage: AssetImage("assets/images/shruti.jpg"),
                  label: 'Web Development',
                  subLabel: '\nCascading Style shee...',
                  description: '\nNo. of videos: 24',
                  subDescription: '\nCoursetime: 3.0 hours',
                  name: 'shruti Codes',
                  slogan: '\nInstructor',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                CourseWidget(
                  courseImage: AssetImage('assets/images/web.jpg'),
                  logoImage: AssetImage("assets/images/shruti.jpg"),
                  label: 'Web Development',
                  subLabel: '\nCascading Style shee...',
                  description: '\nNo. of videos: 24',
                  subDescription: '\nCoursetime: 3.0 hours',
                  name: 'shruti Codes',
                  slogan: '\nInstructor',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
