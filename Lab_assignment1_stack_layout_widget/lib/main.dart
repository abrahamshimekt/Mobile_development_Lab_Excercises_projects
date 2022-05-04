
import 'package:flutter/material.dart';
import "package:lab_assignment/routes.dart";
import "package:lab_assignment/routes/home.dart";
import "package:provider/provider.dart";

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.home,
      onGenerateRoute:RouteGenerator.generateRoute,
    );
  }
}
