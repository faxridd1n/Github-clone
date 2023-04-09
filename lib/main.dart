import 'package:flutter/material.dart';
import 'package:git_clone/View/All%20Pages/home_page.dart';
import 'package:git_clone/Services/Controllers/DiService.dart';

void main() async {
  await DIService.init();
  runApp(const MyApp());
}

//nb=
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      // initialBinding: BindService(),
      // getPages: [
      //   GetPage(
      //     name: '/Home',
      //     page: () => Home(),
      //     binding: BindService(),
      //   )
      // ],
    );
  }
}
