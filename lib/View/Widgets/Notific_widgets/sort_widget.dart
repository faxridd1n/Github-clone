import 'package:flutter/material.dart';
import 'package:git_clone/Controllers/bottom_nav_pages/notific_controller.dart';

//nb=
Widget popUpMenu(String text, BuildContext context) {
  return SizedBox(
    height: 30,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color.fromRGBO(52, 59, 68, 0.949),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Row(
          children: [
            Text(text),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 25,
              color: Color.fromARGB(255, 214, 214, 214),
            )
          ],
        ),
      ),
    ),
  );
}

Widget popUpWithout(String text) {
  return SizedBox(
    height: 30,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color.fromRGBO(52, 59, 68, 0.949),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Row(
          children: [
            Text(text),
          ],
        ),
      ),
    ),
  );
}
