import 'dart:developer';

import 'package:apptware_test/models/recipe_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class RecipeRepo {

  static const collectionName = "recipe";
  
  const RecipeRepo();

  Future<List<RecipeModel>> fetchRecipes() async {
    try {
      bool hasInternetConnection = await InternetConnectionChecker().hasConnection;
      var snapshot = await FirebaseFirestore.instance.collection(collectionName).get(GetOptions(source: hasInternetConnection ? Source.server : Source.cache));
      return snapshot.docs.map((e) => RecipeModel.fromDocument(e)).toList();
    } on FirebaseException catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

}