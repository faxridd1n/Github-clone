import 'package:flutter/material.dart';

import '../../../Models/homeReposModel.dart';

Widget repositoryListProfile(RepositoriesModel model) {
  return Container(
    color: Color.fromARGB(255, 20, 22, 27),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            model.name!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Icon(
                Icons.star_rate_rounded,
                size: 22,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.circle,
                color: Colors.teal,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Dart',
                style: TextStyle(
                  color: Color.fromARGB(255, 212, 212, 212),
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
