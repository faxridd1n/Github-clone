import 'package:flutter/material.dart';

import '../Home_widgets/work_Widget.dart';

Widget workWidgetExplore(
  int index,
  BuildContext context,
  String text,
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
                images[index],
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
    ),
  );
}
