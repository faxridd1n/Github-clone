import 'package:flutter/material.dart';

Widget commit_widget(BuildContext context) {
  return Container(
      color: const Color.fromARGB(255, 20, 22, 27),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Update README.md',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '7d',
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 187, 187),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children:const [
                   CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text('F'),
                    ),
                  ),
                   SizedBox(
                    width: 10,
                  ),
                  Text(
                    'faxridd1n ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'authored',
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 195, 195),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ]),
      ));
}
