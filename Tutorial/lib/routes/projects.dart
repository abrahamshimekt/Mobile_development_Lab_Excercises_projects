import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects();
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                          children: [Image.asset(""),Text("jklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("mnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("jklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                          children: [Image.asset(""),Text("abcdefghijklmnopqrstuvwxyz"),
                            TextButton(onPressed: (){},child: Text("Submit"),)],

                        ))),
              ],
            )));
  }
}
