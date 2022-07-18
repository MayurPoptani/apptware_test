import 'package:apptware_test/constants/app_colors.dart';
import 'package:apptware_test/constants/recipe_category.dart';
import 'package:apptware_test/recipe_list_page/controller.dart';
import 'package:apptware_test/recipe_list_page/widgets/recipe_grid_list.dart';
import 'package:apptware_test/repositories/recipe_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart' show Get, Inst;

import 'widgets/recipe_category_selection_widget.dart';


class RecipeListPage extends StatefulWidget {
  const RecipeListPage({ Key? key }) : super(key: key);

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {

  final controller = RecipeListPageController();
  late FutureBuilder recipesGridFutureBuilder;

  PageController pageController = PageController(initialPage: 0);

  bool hasInternetConnection = true;

  static const noInternetConnectionErrorMessage = "No internet connection";
  static const failedToFetchRecipesErrorMessage = "Failed to fetch recipes";

  @override
  void initState() {
    controller.isFetchingRecipies = true;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      InternetConnectionChecker().onStatusChange.listen((event) {
        setState(() => hasInternetConnection = event == InternetConnectionStatus.connected);
      });
      hasInternetConnection = await InternetConnectionChecker().hasConnection;
      fetchRecords();
    });
    super.initState();
  }

  void fetchRecords() async {
    setState(() => controller.isFetchingRecipies = true);
    Get.find<RecipeRepo>().fetchRecipes().then((recipes) {
      if(mounted) {
        controller.recipes = recipes.toList();
        controller.generateCategorizedRecipes();
        setState(() => controller.isFetchingRecipies = false);
      }
    }).onError((error, stackTrace) {
      setState(() {
        controller.isFetchingRecipies = false;
        controller.hasError = true;
        if(error is! FirebaseException) {
          controller.error = failedToFetchRecipesErrorMessage;
        } else if(error.code=="unavailable") {
          controller.error = noInternetConnectionErrorMessage;
        } else {
          controller.error = error.message??failedToFetchRecipesErrorMessage;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headlines(),
              24.heightBox,
              searchBar(),
              24.heightBox,
              contentWidget().expand(),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentWidget() {
    if(controller.isFetchingRecipies) {
      return const CircularProgressIndicator().objectCenter().h(256);
    }
    if(controller.hasError) {
      return Column(
        children: [
          controller.error.toString().text.size(16).medium.make().centered(),
          16.heightBox,
          if(controller.error == noInternetConnectionErrorMessage) 
            ElevatedButton(
              onPressed: () {
                if(mounted) fetchRecords();
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.redColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16)
              ),
              child: "Retry".text.buttonText(context).white.make(),
            ),
        ],
      ).p24().h(256);
    }
    if(controller.searchC.text.trim().isNotBlank) {
      var res = controller.recipes.where((e) => e.name.toLowerCase().contains(controller.searchC.text.trim().toLowerCase())).toList();
      if(res.isEmpty) {
        return "No matching Results Found".toString().text.size(16).medium.make().centered().p24().h(256);
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Results".text.headline6(context).bold.make(),
          8.heightBox,
          RecipeGridList(recipes: res),
        ],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RecipeCategorySelectorWidget(selectedCategory: controller.selectedCatetory, onChange: (val) {
          if(controller.selectedCatetory == val) return;
          controller.selectedCatetory = val;
          animateToPage(RecipeCategory.categories.indexOf(val));
          setState(() {});
        }),
        16.heightBox,
        PageView(
          controller: pageController,
          children: RecipeCategory.categories.map((e) => RecipeGridList(recipes: controller.categorizedRecipies[e]??[])).toList(),
          onPageChanged: (val) => setState(() => controller.selectedCatetory = RecipeCategory.categories[val]),
        ).expand(),
      ],
    );
  }

  void animateToPage(int index) {
    pageController.animateToPage(
      index, 
      duration: 150.milliseconds, 
      curve: Curves.easeIn
    );
  }

  Widget headlines() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Delicious".text.subtitle2(context).gray500.make(),
        "Easy to cook menu".text.headline5(context).black.bold.make(),
      ],
    );
  }

  Widget searchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8),
        ]
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          4.widthBox,
          const Icon(Icons.search),
          8.widthBox,
          TextFormField(
            controller: controller.searchC,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "Search your perfect recipe",
              hintStyle: context.textTheme.bodyText2?.copyWith(color: Colors.black26),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              isDense: true
            ),
            onChanged: (str) => setState(() {}),
          ).expand(),
        ],
      ),
    );
  }

}