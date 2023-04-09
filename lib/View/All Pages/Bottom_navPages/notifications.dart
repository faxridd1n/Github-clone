import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:git_clone/View/Widgets/Notific_widgets/sort_widget.dart';

import '../../../Controllers/bottom_nav_pages/notific_controller.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

//nb=
class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 22, 27),
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 50),
            child: Container(
              color: const Color.fromARGB(255, 20, 22, 27),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    popUpMenu('Inbox', context),
                    const SizedBox(
                      width: 5,
                    ),
                    popUpWithout('Unread'),
                    const SizedBox(
                      width: 5,
                    ),
                    popUpMenu('Repository', context),
                  ],
                ),
              ),
            )),
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-200,
        child: Image.asset(
          'assets/lottie.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
