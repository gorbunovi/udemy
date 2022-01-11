import 'ingridient.dart';

class Recipe{

  Recipe({this.id=0, this.name='', this.ingredients=[Ingredient(), Ingredient()]});

  final int id;
  final String name;
  final List <Ingredient> ingredients;
}


