
import 'package:get/get.dart';

import '../../Controllers/bottom_nav_pages/home_controller.dart';


class BindService implements Bindings {

  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}