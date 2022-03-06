import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/pages/home/homedesktop.dart';
import 'package:portfolio/pages/mainpage.dart';
import 'package:portfolio/pages/pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: const PageViewExample(),
    );
  }
}
