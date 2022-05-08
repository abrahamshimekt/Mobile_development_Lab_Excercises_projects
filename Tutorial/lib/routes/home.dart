import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';

import 'package:tutorial/routes/registered_courses.dart';

import '../models/counter.dart';
import 'all_courses.dart';
import 'projects.dart';
import 'unenrolled_courses.dart';
import 'package:tutorial/models/counter.dart' as CounteModel;

class Home extends StatelessWidget {
  const Home();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption = <Widget>[
    RegistedCourses(),
    UnEnrolledCourses(),
    AllCourses(),
  ];
  @override
  Widget build(BuildContext context) {
    final indexCounter = Provider.of<CounterModel>(context);
    int _selectedIndex = indexCounter.currentCount;
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Image.asset("")),
            ListTile(title: Text("Name"), onTap: () {}),
            ListTile(title: Text("Client")),
            ListTile(
              title: Text("Back"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Exit"),
              onTap: () {
                exit(0);
              },
            )
          ],
        ),
      ),
      body:Container(child:_widgetOption.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Enrolled", icon: Icon(Icons.school, color: Colors.black)),
          BottomNavigationBarItem(
              label: "Unrolled", icon: Icon(Icons.school, color: Colors.black)),
          BottomNavigationBarItem(
              label: "All Courses", icon: Icon(Icons.abc, color: Colors.black)),
        ],
        currentIndex: _selectedIndex ,
        selectedItemColor: Colors.amber,
        onTap: indexCounter.onItemTapped
    ));
  }
}
