import 'package:flutter/material.dart';
import "package:recipes/models/recipe.dart";

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.recipe.label)),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.all(10),
                child: Column(children: [
                  SizedBox(
                      child: Image(
                          image: AssetImage(widget.recipe.imageUrl),
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover)),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(widget.recipe.label,
                      style: const TextStyle(fontSize: 18)),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: widget.recipe.ingredients.length,
                          itemBuilder: (BuildContext context, int index) {
                            final ingredient = widget.recipe.ingredients[index];
                            return Center(
                                child: Text(
                                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}'));
                          })),
                  Slider(
                    min: 1,
                    max: 10,
                    divisions: 10,
                    label: '${widget.recipe.servings} servings',
                    value: _sliderVal.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderVal = newValue.round();
                      });
                    },
                    activeColor: Colors.red,
                    inactiveColor: Colors.black,
                  ),
                  ElevatedButton(
                    child: Text("Order now",
                        style:
                            TextStyle(color: Colors.tealAccent, fontSize: 20)),
                    onPressed: () {Navigator.of(context).pop();},
                  )
                ]))));
  }
}
