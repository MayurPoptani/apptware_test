import 'package:apptware_test/constants/recipe_category.dart';
import 'package:apptware_test/models/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeListPageController {
  var searchC = TextEditingController();
  RecipeCategory selectedCatetory = RecipeCategory.all;
  List<RecipeModel> recipes = [];
  Map<RecipeCategory, List<RecipeModel>> categorizedRecipies = {};
  bool isFetchingRecipies = false;
  bool hasError = false;
  Object? error;
  GlobalKey recipeGridFutureBuilderKey = GlobalKey();

  void generateCategorizedRecipes() {
    categorizedRecipies = Map.fromEntries(RecipeCategory.categories.map((e) {
      if(e == RecipeCategory.all) {
        return MapEntry(e, recipes.toList());
      } else {
        return MapEntry(e, recipes.where((item) => item.categories.contains(e.categoryId)).toList());
      }
    }));
  }

}