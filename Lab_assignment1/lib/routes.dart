import 'package:flutter/material.dart';
import "package:lab_assignment/routes/home.dart";
import "package:lab_assignment/routes/movies.dart";
class RouteGenerator{
  static const String home ="/";
  static const String movie ="/movies";
  RouteGenerator._(){}
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case home:
        return MaterialPageRoute(builder:(_)=> Home());
      case movie:
        return MaterialPageRoute(builder:(_)=> Movie());
      default:
        throw Exception("page not found");
    }
  }
}