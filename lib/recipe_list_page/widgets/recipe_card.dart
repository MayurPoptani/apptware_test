import 'package:apptware_test/models/recipe_model.dart';
import 'package:apptware_test/recipe_details_page/recipe_details_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecipeCard extends StatelessWidget {
  
  static double get recipeCardHeight => 232;

  final RecipeModel recipe;

  const RecipeCard({required this.recipe, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const double borderRadius = 16.0;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.only(top: 4, bottom: 8, left: 4, right: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 0)),
            ],
          ),
          child: Column(
            children: [
              Hero(
                tag: recipe.docId,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: recipe.image, 
                    height: constraints.hasBoundedHeight ? constraints.maxHeight * .65 : context.screenWidth * .5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if(constraints.hasBoundedHeight) recipeContent().expand()
              else recipeContent(),
            ],
          ),
        );
      }
    ).onInkTap(() {
      context.push((context) => RecipeDetailsPage(recipe: recipe));
    });
  }

  Widget recipeContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        recipe.name.text.size(18).semiBold.make(),
        4.heightBox,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            "${recipe.time.toInt()} mins".text.size(12).make(),
            VxBox().height(14).width(1).color(Colors.black12).make().pSymmetric(h: 8),
            const Icon(Icons.star_rounded, color: Colors.amber, size: 16,),
            8.widthBox,
            recipe.rating.toStringAsFixed(1).text.size(12).make(),
          ],
        ),
        4.heightBox,
      ],
    );
  }
}