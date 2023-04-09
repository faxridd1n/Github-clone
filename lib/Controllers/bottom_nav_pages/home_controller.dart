import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//nb=
class HomeController extends GetxController {
  var isLoad = false;
  var posts = [];
  var currentPage = 0;
  PageController pageController = PageController();
  
  void pageChange(int value) {
    currentPage = value;
    pageController.jumpToPage(currentPage);
    update();
  }
}
