import 'package:apptware_test/constants/app_colors.dart';
import 'package:apptware_test/models/recipe_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RecipeDetailsPage extends StatefulWidget {
  final RecipeModel recipe;
  const RecipeDetailsPage({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetailsPage> createState() => _RecipeDetailsPageState();
}

class _RecipeDetailsPageState extends State<RecipeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // collapsedHeight: context.screenHeight / 4,24
            leading: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24,).pOnly(right: 2).box.size(40, 40).roundedFull.white.make().onInkTap(() => context.pop()).centered(),
            pinned: true,
            expandedHeight: context.screenHeight / 2,
            backgroundColor: AppColors.scaffoldBackgroundColor,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.recipe.docId,
                child: ClipRRect(
                  child: CachedNetworkImage(
                    imageUrl: widget.recipe.image, 
                    height: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                recipeSummarySection(),
                24.heightBox,
                ingredientsList(),
                24.heightBox,
                instructions(),
                (context.screenHeight * .5).heightBox,
              ],
            ).p(20),
          ),
        ],
      ),
    );
  }

  Widget recipeSummarySection() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.recipe.name.text.headline5(context).semiBold.make(),
        const Spacer(),
        "${widget.recipe.time.toInt()} mins".text.size(14).semiBold.make(),
        VxBox().height(14).width(1).color(Colors.black12).make().pSymmetric(h: 8),
        const Icon(Icons.star_rounded, color: Colors.amber, size: 20,),
        8.widthBox,
        widget.recipe.rating.toStringAsFixed(1).text.size(14).semiBold.make(),
      ],
    );
  }

  Widget instructions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Instructions".text.headline6(context).bold.make(),
        8.heightBox,
        widget.recipe.instructions.text.size(12).make()
      ],
    );
  }

  Widget ingredientsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Ingredients".text.headline6(context).bold.make(),
        8.heightBox,
        Wrap(
          runSpacing: 8,
          spacing: 8,
          children: widget.recipe.ingredients.map((e) => Container(
            padding: const EdgeInsets.all(12),
            child: e.text.size(14).white.make(),
            decoration: BoxDecoration(
              color: AppColors.pinkColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 4),
              ]
            ),
          )).toList(),
        ),
      ],
    );
  } 
}