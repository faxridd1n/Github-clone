import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_clone/Controllers/bottom_nav_pages/home_controller.dart';
import 'package:git_clone/View/All%20Pages/Bottom_navPages/explore.dart';
import 'package:git_clone/View/All%20Pages/Bottom_navPages/home.dart';
import 'package:git_clone/View/All%20Pages/Bottom_navPages/profile.dart';

import 'Bottom_navPages/notifications.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

//nb=
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 22, 27),
      bottomNavigationBar: GetBuilder(
        init: HomeController(),
        builder: (controller) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 12.5),
          currentIndex: controller.currentPage,
          backgroundColor: Color.fromARGB(255, 20, 22, 27),
          onTap: (value) {
            controller.pageChange(value);
          },
          selectedItemColor: Color.fromARGB(223, 9, 138, 212),
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 20, 22, 27),
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 20, 22, 27),
              icon: Icon(
                Icons.notifications_none,
                size: 30,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 20, 22, 27),
              icon: Icon(
                Icons.travel_explore_outlined,
                size: 30,
              ),
              label: 'Expore',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 20, 22, 27),
              icon: Icon(
                Icons.person_outline_rounded,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: GetBuilder(
        init: HomeController(),
        builder: (controller) => PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.pageChange(value);
          },
          children: const [
            Home(),
            Notifications(),
            Explore(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
