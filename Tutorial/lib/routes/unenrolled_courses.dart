import 'package:flutter/material.dart';

class UnEnrolledCourses extends StatefulWidget {
  const UnEnrolledCourses();
  @override
  _UnEnrolledCoursesState createState() => _UnEnrolledCoursesState();
}

class _UnEnrolledCoursesState extends State<UnEnrolledCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(20),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnop"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopq"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqr"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqr"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqr"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopq"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopq"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqr"),
                            TextButton(onPressed: (){},child: Text("Register"),)],

                        ))),
              ],
            )));
  }
}
