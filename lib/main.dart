import 'package:flutter/material.dart';
import 'package:flutter_golang/screens/add_course.dart';
import 'package:flutter_golang/screens/all_courses.dart';
import 'package:flutter_golang/screens/home_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllCourses(),
    );
  }
}
