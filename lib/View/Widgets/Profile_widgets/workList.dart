import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ExplorePages/code_files.dart';

import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository.dart';

import '../../../Models/foldersModel.dart';
import '../../All Pages/Other_Pages/HomePages/code_files.dart';
import '../../All Pages/Other_Pages/HomePages/commits.dart';

Widget workWidgetProfile(

  int index,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
     
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
                images[index] ,
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
Widget workWidgetProfile2(
 String name,
  int index,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
   
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => index == 0 ? Code_Files(name) : CommitPage(),
          ),
        );
      
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
                mainImages[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            mainames[index],
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

Widget workWidgetOthers(
 String name,

  int index,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
   
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => index == 0 ? CodeOthers_Files(name) : CommitPage(),
          ),
        );
      
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
                mainImages[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            mainames[index],
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
  'assets/w6.jpg',
];
List<String> names = [
  'Issues',
  'Pull Requests',
  'Contributors',
  'Watchers',
];
List<String> mainImages = [
  'assets/code.jpg',
  'assets/commit.jpg',
];
List<String> mainames = [
  'Browse code',
  'Commits',
];
