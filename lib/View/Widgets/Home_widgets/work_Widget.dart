import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/starred.dart';

import '../../../Models/homeReposModel.dart';

Widget workWidget(
  int index,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Repository(),
          ),
        );
      }
      if (index == 5) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StarredRepos(),
          ),
        );
      }
    },
    child: Container(
      height: 45,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image(
              image: AssetImage(
                images[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            names[index],
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

//nb=
List<String> images = [
  'assets/w1.jpg',
  'assets/w2.jpg',
  'assets/w3.jpg',
  'assets/w4.jpg',
  'assets/w5.jpg',
  'assets/w6.jpg',
];
List<String> names = [
  'Issues',
  'Pull Requests',
  'Discussions',
  'Repositories',
  'Organizations',
  'Starred',
];
