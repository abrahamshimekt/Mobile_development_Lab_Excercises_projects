import 'package:flutter/material.dart';

import '../routes.dart';


class RegistedCourses extends StatefulWidget {
  const RegistedCourses();
  @override
  _RegisteredCoursesState createState() => _RegisteredCoursesState();
}

class _RegisteredCoursesState extends State<RegistedCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: GridView.count(
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_3.png",
                    width: 50, height: 50, fit: BoxFit.cover),onTap: (){Navigator.of(context)?.pushNamed(RouteGenerator.courseDetail);},),
                Text("Learn python from scratch"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_4.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_5.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GestureDetector(child: Image.asset("assets/images/img_6.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GestureDetector(child: Image.asset("assets/images/img_7.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_8.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(8),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_9.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("abcdefghijklmnopqrstuvwxyz"),
                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),
        Container(
            padding: EdgeInsets.all(4),
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child:Image.asset("assets/images/img_10.png",
                    width: 50, height: 50, fit: BoxFit.cover)),
                Text("Linux for beginners"),

                Row(children:[TextButton(
                  onPressed: () {},
                  child: Text("more"),
                ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  )]


                )
              ],
            ))),

      ],
    )));
  }
}
