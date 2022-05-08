import 'package:flutter/material.dart';
import 'package:tutorial/routes/login.dart';
import 'package:tutorial/routes/home.dart';
import 'routes/signup.dart';
import 'widgets/courses.dart';

class RouteGenerator {
  static const String login = "/";
  static const String signup = "/signup";
  static const String home = "/home";
  static const String courseDetail = "/home/courseDetail";
   RouteGenerator._(){}
  static Route<dynamic> generateRoute(RouteSettings setings) {
    switch (setings.name) {
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      case home:
        return MaterialPageRoute(builder: (context) =>const Home());
      case courseDetail:
        return MaterialPageRoute(builder:(context)=> const PythonCourse());
      default:
        throw Exception("page not found");
    }
  }
}
