import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';

import '../theme/fooderlichTheme.dart';

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  final List<Ingredient> _ingredients = <Ingredient>[
    Ingredient(10, "oz", "Vegan"),
    Ingredient(10, "oz", "Healthy"),
    Ingredient(10, "oz", "Protien"),
    Ingredient(10, "oz", "Carbohydrate"),
    Ingredient(10, "oz", "Fat"),
    Ingredient(10, "oz", "Fiber"),
    Ingredient(10, "oz", "Vitamin"),
    Ingredient(10, "oz", "Mineral"),
    Ingredient(10, "oz", "wot"),
    Ingredient(10, "oz", "Injera"),
  ];
  Iterable<Widget> get ingredientWidgets {
    return _ingredients.map((Ingredient ingredient) {
      return Padding(
          padding: EdgeInsets.all(5),
          child: Chip(
            label: Text(ingredient.name,style: FooderlichTheme.darkTextTheme.bodyText1),
              backgroundColor: Colors.black.withOpacity(0.7),
            onDeleted: () {
              setState(() {
                _ingredients.removeWhere((Ingredient entry) {
                  return entry.name == ingredient.name;
                });
              });
            },
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.book, color: Colors.white, size: 40),
                    Text(
                      'Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2,
                    ),
                    // 9
                    const SizedBox(height: 30)
                  ],
                )),
            Center(
              child:
                  Wrap(alignment: WrapAlignment.start, spacing: 12, children:ingredientWidgets.toList()),
            )
          ],
        ),
      ),
    );
  }
}
