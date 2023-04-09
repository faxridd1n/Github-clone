import 'package:flutter/material.dart';

import '../../../Models/othersProfileModel.dart';

Widget followers(OthersProfileModel model) {
  return Container(
    color: const Color.fromARGB(255, 20, 22, 27),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(model.avatarUrl??'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg'),
            ),
          const SizedBox(
            width: 15,
          ),
           Text(
            model.login!,
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
