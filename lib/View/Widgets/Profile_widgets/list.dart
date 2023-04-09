import 'package:flutter/material.dart';
import 'package:git_clone/Models/homeReposModel.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/repositoryList.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/ProfilePages/starred.dart';

Widget listWork(String image, String text, int index, BuildContext context,int count) {
  return InkWell(
    onTap: () {
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RepositoryList('faxridd1n'),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StarredRepos(),
          ),
        );
      }
    },
    child: Container(
      height: 30,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 45,
                width: 40,
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 18,
                ),
              ),
            ],
          ),
           Text(
            count.toString(),
            style: TextStyle(
                color: Color.fromARGB(255, 170, 170, 170), fontSize: 16),
          )
        ],
      ),
    ),
  );
}

//nb=
List<String> imagesList = [
  'assets/w4.jpg',
  'assets/w5.jpg',
  'assets/w6.jpg',
  'assets/w1.jpg',
];
List<String> namesList = [
  'Repositories',
  'Organizations',
  'Starred',
  'Issues',
];
Widget listWork2(int count, String login, String image, String text, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RepositoryList(login),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StarredRepos(),
          ),
        );
      }
    },
    child: Container(
      height: 30,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 45,
                width: 40,
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 18,
                ),
              ),
            ],
          ),
           Text(
           count.toString(),
            style: TextStyle(
                color: Color.fromARGB(255, 170, 170, 170), fontSize: 16),
          )
        ],
      ),
    ),
  );
}

//nb=
List<String> imagesList2 = [
  'assets/w4.jpg',
  'assets/w5.jpg',
  'assets/w6.jpg',
];
List<String> namesList2 = [
  'Repositories',
  'Organizations',
  'Starred',
];
