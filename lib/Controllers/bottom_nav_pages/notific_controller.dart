import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_clone/View/Widgets/Notific_widgets/sort_widget.dart';

//nb=
BuildContext context = context;


class NotificController extends GetxController {
  var open = false;
  var a = 0;
  closeOpenSheet() {
    if (open == false) {
      open = true;
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 54, 53, 53),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: 45,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color.fromARGB(255, 167, 163, 163),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 78, 77, 77),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      open = false;
      update();
    }

    update();
  }
}
