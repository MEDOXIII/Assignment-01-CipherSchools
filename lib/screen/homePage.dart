import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import '../widget/cardWidget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List imageList = [
    'assets/images/Anurag.webp',
    'assets/images/Rajan.webp',
    'assets/images/Harshit.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '   Welcome to',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' The',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: '\nFuture',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: ' Of Learning!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Start Learning by best creator for ',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.orange,
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Absolutely Free',
                    speed: const Duration(milliseconds: 120),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    for (int i = 0; i < imageList.length; i++)
                      Align(
                        alignment: Alignment.topRight,
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage(imageList[i]),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: ' 50 + ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '\nMentors ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '            4.8/5 \n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const TextSpan(
                        text: 'Ratings ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              onPressed: () {},
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Start Learning Now ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ScrollLoopAutoScroll(
              scrollDirection: Axis.horizontal,
              duration: const Duration(seconds: 120),
              gap: 3,
              delay: const Duration(seconds: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CardWidget(
                    iconAvatar: Icons.perm_contact_cal_outlined,
                    label: '\n'
                        '\n'
                        'Mentors',
                    description: '\n'
                        '\nStart learning from the'
                        '\nmentors coming from giant'
                        ' \ncorporation like microsoft,'
                        '\nGoogle, Amazon, Paypal, etc! ',
                  ),
                  CardWidget(
                    iconAvatar: Icons.circle_notifications_outlined,
                    label: '\n'
                        '\n'
                        'Earn\nCipherPoints',
                    description: '\n'
                        '\nEarn exclusive rewards by'
                        '\ndeveloping your skill with us!',
                  ),
                  CardWidget(
                    iconAvatar: Icons.qr_code,
                    label: '\n'
                        '\n'
                        'Q-rated\nContent',
                    description: '\n'
                        '\nUnlock quality content with our'
                        '\nQ-rated content!',
                  ),
                  CardWidget(
                    iconAvatar: Icons.point_of_sale,
                    label: '\n'
                        '\n'
                        'Projects',
                    description: '\n'
                        '\nGet the hands-on experience'
                        ' \nwith real-time project guided'
                        '\nby expert mentors! ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
