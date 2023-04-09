import 'package:cipherschools/screen/coursesPage.dart';
import 'package:cipherschools/screen/homePage.dart';
import 'package:cipherschools/screen/profilePage.dart';
import 'package:cipherschools/screen/trendingPage.dart';
import 'package:cipherschools/widget/homeAppBar.dart';
import 'package:flutter/material.dart';

import '../widget/ItemWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  bool selectedHome = true;
  bool selectedCourses = false;
  bool selectedTrending = false;
  bool selectedProfile = false;
  bool isHomePage = true;
  bool isChanged = true;
  var color = Colors.white;

  List pageList = [
    HomePage(),
    const CoursesPage(),
    const TrendingPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: isHomePage
          ? const HomeAppBar()
          : AppBar(
              actions: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: ImageIcon(
                    AssetImage("assets/images/compass.png"),
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      hint: const Text(
                        'Browser',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
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
                Switch(
                  activeColor: Colors.orange,
                  value: isChanged,
                  activeThumbImage:
                      const AssetImage("assets/images/compass.png"),
                  inactiveThumbImage:
                      const AssetImage("assets/images/logo.png"),
                  onChanged: (value) => setState(() => isChanged = value),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 1.0, right: 5.0),
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
              ],
              title: const Text(
                'CipherSchools',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.black45,
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
      body: pageList[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemWidget(
                clicked: () {
                  setState(() {
                    isHomePage = true;
                    pageIndex = 0;
                    selectedHome = true;
                    selectedCourses = false;
                    selectedTrending = false;
                    selectedProfile = false;
                    color = Colors.white;
                  });
                },
                iconPage: Icon(
                  Icons.home,
                  color: selectedHome ? Colors.orange : Colors.grey,
                ),
                label: Text(
                  'Home',
                  style: TextStyle(
                    color: selectedHome ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
              ItemWidget(
                clicked: () {
                  setState(() {
                    isHomePage = false;
                    pageIndex = 1;
                    selectedCourses = true;
                    selectedHome = false;
                    selectedTrending = false;
                    selectedProfile = false;
                    color = Colors.black38;
                  });
                },
                iconPage: ImageIcon(
                  const AssetImage("assets/images/bookshelf.png"),
                  color: selectedCourses ? Colors.orange : Colors.grey,
                ),
                label: Text(
                  'Courses',
                  style: TextStyle(
                    color: selectedCourses ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
              ItemWidget(
                clicked: () {
                  setState(() {
                    isHomePage = false;
                    pageIndex = 2;
                    selectedTrending = true;
                    selectedHome = false;
                    selectedCourses = false;
                    selectedProfile = false;
                    color = Colors.black38;
                  });
                },
                iconPage: ImageIcon(
                  const AssetImage("assets/images/compass.png"),
                  color: selectedTrending ? Colors.orange : Colors.grey,
                ),
                label: Text(
                  'Trending',
                  style: TextStyle(
                    color: selectedTrending ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
              ItemWidget(
                clicked: () {
                  setState(() {
                    isHomePage = false;
                    pageIndex = 3;
                    selectedProfile = true;
                    selectedHome = false;
                    selectedCourses = false;
                    selectedTrending = false;
                    color = Colors.black38;
                  });
                },
                iconPage: Icon(
                  Icons.person,
                  color: selectedProfile ? Colors.orange : Colors.grey,
                ),
                label: Text(
                  'My Profile',
                  style: TextStyle(
                    color: selectedProfile ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
