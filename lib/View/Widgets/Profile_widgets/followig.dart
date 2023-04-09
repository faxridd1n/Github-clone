import 'package:flutter/material.dart';

Widget following() {
  return Container(
    color: const Color.fromARGB(255, 20, 22, 27),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          ClipOval(
              child: Image.asset(
            'assets/profile.jpg',
            height: 55,
            width: 55,
          )),
          const SizedBox(
            width: 15,
          ),
          const Text(
            'Abdujabbor17',
            style: TextStyle(
              color: Color.fromARGB(255, 185, 185, 185),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );
}
