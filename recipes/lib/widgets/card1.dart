import 'package:flutter/cupertino.dart';
import "package:recipes/theme/fooderlichTheme.dart";

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(16),
            constraints: BoxConstraints.expand(width: 350, height: 500),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img_5.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Stack(
              children: [
                Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
                Positioned(
                    top: 20,
                    child: Text(title,
                        style: FooderlichTheme.darkTextTheme.bodyText1)),
                Positioned(
                    bottom: 30,
                    right: 0,
                    child: Text(description,
                        style: FooderlichTheme.darkTextTheme.bodyText1)),
                Positioned(
                    bottom: 10,
                    right: 0,
                    child: Text(chef,
                        style: FooderlichTheme.darkTextTheme.bodyText1))
              ],
            )));
  }
}
