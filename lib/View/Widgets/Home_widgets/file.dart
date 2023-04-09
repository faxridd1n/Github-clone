import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/libPage.dart';

import '../../../Models/foldersModel.dart';

Widget file(
  String name,
  Icon icons,
  int index,
  List<FoldersModel> model,
  BuildContext context,
  
) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LibPage(name,model[index].name!)));
    },
    child: Container(
      color: const Color.fromARGB(255, 20, 22, 27),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            icons,
            const SizedBox(
              width: 10,
            ),
            Text(
              model[index].name!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

List<String> text = [
  'android',
  'assets',
  'ios',
  'lib',
  'test',
  '.gitignore',
  '.metadata',
  'README.md',
];
