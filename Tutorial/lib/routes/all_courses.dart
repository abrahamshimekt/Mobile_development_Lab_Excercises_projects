import 'package:flutter/material.dart';

class AllCourses extends StatefulWidget {
  const AllCourses();
  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  double sideLength = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: GridView.count(
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: <Widget>[
        AnimatedContainer(
          width: sideLength,
          height: sideLength,
          duration: Duration(seconds: 2),
          curve: Curves.easeIn,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 150 : sideLength = 100;
              });
            },
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            )),
          ),
        ),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              children: [
                Image.asset(""),
                Text("abcdefghijklmnopqrstuvwxyz"),
                TextButton(
                  onPressed: () {},
                  child: Text("Register"),
                )
              ],
            ))),
      ],
    )));
  }
}
