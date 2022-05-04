import "package:flutter/material.dart";
import "package:recipes/theme/fooderlichTheme.dart";
import 'package:recipes/widgets/card1.dart';
import 'package:recipes/widgets/card2.dart';
import 'package:recipes/widgets/card3.dart';

class Fooderlich extends StatefulWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  State<Fooderlich> createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  int _selectedIndex =0;
  static List<Widget> pages = <Widget>[
    Card1(),
    Card2(),
    Card3(),
  ];
  void onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return Scaffold(
        appBar: AppBar(
            title: Text("fooderlich",
                style: Theme.of(context).textTheme.headline6)),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: "gift"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"favorite"),
              BottomNavigationBarItem(icon:Icon(Icons.settings),label:"settings")
            ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,));
  }
}
