
import 'package:get/get.dart';
import 'package:git_clone/Controllers/bottom_nav_pages/notific_controller.dart';

import '../../Controllers/bottom_nav_pages/home_controller.dart';
//nb=
class DIService {
  static Future<void> init() async {
   // Get.put<HomeController>(HomeController());
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<NotificController>(() => NotificController(), fenix: true);
    // Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    // Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

  }
}
