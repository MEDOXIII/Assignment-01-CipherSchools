import 'package:flutter/material.dart';

import '../widget/trendingWidget.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Trending Courses",
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
              children: const [
                TrendingWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                TrendingWidget(
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TrendingWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                TrendingWidget(
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TrendingWidget(
                  courseImage: AssetImage('assets/images/lang.webp'),
                  logoImage: AssetImage("assets/images/lang-logo.png"),
                  label: 'Languify',
                  subLabel: '\nFREE IELTS/TOEFL...',
                  description: '\nAi genereated feedbackand...',
                  subDescription: '\nTest duration: 30 mins/3...',
                  name: 'Languify',
                  slogan: '\nexpress & excel',
                ),
                TrendingWidget(
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
