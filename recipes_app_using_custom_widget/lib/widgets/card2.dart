import 'package:flutter/cupertino.dart';
import 'package:recipes/theme/fooderlichTheme.dart';
import 'package:recipes/widgets/auther_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: BoxConstraints.expand(width: 360, height: 500),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Column(children: [
              const AutherCard(
                authorName: "Angolina Jollie",
                title: "The life taken from man",
                imageProvider: AssetImage("assets/images/img_6.png"),
              ),
              Expanded(
                  child: Stack(children: [
                Positioned(
                  child: Text("Recipe",
                      style: FooderlichTheme.darkTextTheme.bodyText1),
                  bottom: 16,
                  right: 16,
                ),
                Positioned(
                    child:RotatedBox(quarterTurns:3,child: Text("Smooth",
                        style: FooderlichTheme.darkTextTheme.bodyText1)),
                    left: 26,
                    bottom: 70)
              ]))
            ])));
  }
}
