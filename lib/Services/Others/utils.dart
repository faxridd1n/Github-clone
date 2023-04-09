import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Utils {

  static void snackBarError(String text, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height-200),
          content: Text(text),
          backgroundColor: Colors.red,));
  }

  static void snackBarSuccess(String text, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height-200),
          content: Text(text),backgroundColor: Colors.green));
  }
}