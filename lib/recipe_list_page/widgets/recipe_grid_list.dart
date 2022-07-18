import 'package:apptware_test/models/recipe_model.dart';
import 'package:apptware_test/recipe_list_page/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeGridList extends StatefulWidget {

  final List<RecipeModel> recipes;

  const RecipeGridList({
    required this.recipes,
    Key? key
  }) : super(key: key);

  @override
  State<RecipeGridList> createState() => _RecipeGridListState();
}

class _RecipeGridListState extends State<RecipeGridList> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        mainAxisExtent: RecipeCard.recipeCardHeight,
      ), 
      itemCount: widget.recipes.length,
      itemBuilder: (_, i) {
        return RecipeCard(recipe: widget.recipes[i]);
      }
    );
  }
  
}