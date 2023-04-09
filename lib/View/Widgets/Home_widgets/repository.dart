import 'package:flutter/material.dart';

import '../../../Models/homeReposModel.dart';

Widget repositoryList(BuildContext context,RepositoriesModel model) {
  return Container(
    color: const Color.fromARGB(255, 20, 22, 27),
    width: MediaQuery.of(context).size.width,
    height: 70,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
           CircleAvatar(
            backgroundColor: Colors.black,
            radius: 16,
            backgroundImage: NetworkImage(model.owner!.avatarUrl!),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Text(
                model.owner!.login!,
                style: const TextStyle(
                  color: Color.fromARGB(255, 197, 197, 197),
                  fontSize: 16,
                ),
              ),
              Text(
                model.name!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
