enum RecipeCategory {
  all(0, "All"),
  breakfast(1, "BreakFast"),
  launch(2, "Lunch"),
  dinner(3, "Dinner");

  final int categoryId;
  final String categoryName;

  const RecipeCategory(this.categoryId, this.categoryName);

  static List<RecipeCategory> categories = [
    RecipeCategory.all,
    RecipeCategory.breakfast,
    RecipeCategory.launch,
    RecipeCategory.dinner,
  ];

  static RecipeCategory fromJson(num id) => categories.firstWhere((element) => element.categoryId == id, orElse: () => RecipeCategory.all);
  static num toJson(RecipeCategory category) => category.categoryId;
}