class Recipe{
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  Recipe(this.label,this.imageUrl,this.servings,this.ingredients);
  static List<Recipe> recipes = [Recipe('Spaghetti and Meatballs',"assets/images/img.png",4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ]),
  Recipe('Tomato Soup',"assets/images/img_1.png",2,
      [
        Ingredient(1, 'can', 'Tomato Soup',),
      ]),Recipe('Grilled Cheese',"assets/images/img_2.png",1,
        [
          Ingredient(2, 'slices', 'Cheese',),
          Ingredient(2, 'slices', 'Bread',),
        ]),Recipe('Taco Salad',"assets/images/img_3.png",24,
        [
          Ingredient(4, 'cups', 'flour',),
          Ingredient(2, 'cups', 'sugar',),
          Ingredient(0.5, 'cups', 'chocolate chips',),
        ]),
    Recipe('Hawaiian Pizza',"assets/images/img_4.png",1,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],)];
}
class Ingredient{
  double quantity;
  String measure;
  String name;
  Ingredient(this.quantity,this.measure,this.name);
}