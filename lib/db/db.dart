import 'dart:io';
import 'package:apptware_test/models/recipe_model.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

class RecipeDBModel extends Table {
  TextColumn get docId => text().unique()();
  TextColumn get name => text()();
  IntColumn get time => integer()();
  RealColumn get rating => real()();
  TextColumn get image => text()();
  TextColumn get categories => text()();
  TextColumn get instructions => text()();
  TextColumn get ingredients => text()();
}

@DriftDatabase(tables: [RecipeDBModel])
class AppDatabase extends _$AppDatabase {
  
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> saveRecipeToDB(RecipeModel recipe) async {
    // return 0;
    return into(recipeDBModel).insert(RecipeDBModelCompanion.insert(
      docId: recipe.docId,
      name: recipe.name,
      time: recipe.time.toInt(),
      image: recipe.image,
      categories: recipe.categories.join(";"),
      rating: recipe.rating.toDouble(),
      instructions: recipe.instructions,
      ingredients: recipe.ingredients.join(";")
    ));
  }

  Future<List<RecipeModel>> getRecipiesFromDB() async {
    var records = await recipeDBModel.select().get();
    return records.map((e) => RecipeModel(e.name, e.time, e.rating, e.image, e.categories.toString().split(";").map((e) => int.parse(e)).toList(), e.ingredients.toString().split(";"), e.instructions)).toList();
  }

}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}