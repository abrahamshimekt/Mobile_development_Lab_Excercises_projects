import "package:flutter/material.dart";
import "package:recipes/models/recipe.dart";
import "package:recipes/routes/recipeDetail.dart";
class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView.builder(
              itemCount: Recipe.recipes.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return RecipeDetail(recipe: Recipe.recipes[index],);
                      }));
                    },
                    child: buildRecipeCard(Recipe.recipes[index]));
              },
            )));
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
        elevation: 2.0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Image(image: AssetImage(recipe.imageUrl)),
              SizedBox(
                height: 10.0,
              ),
              Text(recipe.label,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "palatino"))
            ])));
  }
}
