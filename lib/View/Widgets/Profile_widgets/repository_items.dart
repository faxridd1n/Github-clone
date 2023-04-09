import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/Bottom_navPages/home.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository_Into.dart';

//nb=
Widget repository(BuildContext context, int index) {
  return InkWell(
    // onTap: () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => Repository_Into()));
    // },
    child: Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.20,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(52, 59, 68, 0.949),
            ),
          ),
          const Positioned(
            left: 15,
            top: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 8,
            ),
          ),
          const Positioned(
            top: 18,
            left: 40,
            child: Text(
              'faxridd1n',
              style: TextStyle(
                color: Color.fromARGB(255, 184, 183, 183),
                fontSize: 18,
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 43,
            child: Text(
              'Facebook',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 66,
            child: Text(
              'UI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 20,
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 22,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    color: Color.fromARGB(255, 134, 134, 134),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dart',
                  style: TextStyle(
                    color: Color.fromARGB(255, 163, 163, 163),
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
