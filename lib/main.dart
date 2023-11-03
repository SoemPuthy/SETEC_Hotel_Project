import 'package:flutter/material.dart';
import 'package:hotel_project/pages/home_page/home_page.dart';
import 'package:hotel_project/pages/home_page/list_view.dart';
import 'package:hotel_project/pages/splash_page/splash_page.dart';

void main() {
  runApp(
    const myApp(),
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
