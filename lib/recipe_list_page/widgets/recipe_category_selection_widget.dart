import 'package:apptware_test/constants/app_colors.dart';
import 'package:apptware_test/constants/recipe_category.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RecipeCategorySelectorWidget extends StatelessWidget {

  final RecipeCategory selectedCategory;
  final Function(RecipeCategory) onChange;

  const RecipeCategorySelectorWidget({
    required this.selectedCategory,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Category".text.headline6(context).semiBold.make(),
        12.heightBox,
        ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: RecipeCategory.categories.length,
          separatorBuilder: (_, i) => 12.widthBox,
          itemBuilder: (_, i) {
            bool isSelected = RecipeCategory.categories[i] == selectedCategory;
            return AnimatedContainer(
              duration: 300.milliseconds,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isSelected ? AppColors.redColor : Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 8),
                ]
              ),
              alignment: Alignment.center,
              constraints: const BoxConstraints(minWidth: 64),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: RecipeCategory.categories[i].categoryName.text.size(24).semiBold.color(isSelected ? Colors.white : Colors.black).make(),
            ).onInkTap(() {
              onChange(RecipeCategory.categories[i]);
            });
          }
        ).h(48),
      ],
    );
  }
}