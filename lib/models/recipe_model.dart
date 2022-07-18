// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const RecipeModel._();
  // const factory RecipeModel() = _RecipeModel;
  const factory RecipeModel(
    @JsonKey(name: "name") String name,
    @JsonKey(name: "time") num time,
    @JsonKey(name: "rating") num rating,
    @JsonKey(name: "image") String image,
    @JsonKey(name: "category") List<num> categories,
    @JsonKey(name: "ingredients") List<String> ingredients,
    @JsonKey(name: "instructions") String instructions,
    [
      @Default("") @JsonKey(name: "docId") String docId,
    ]
  ) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

  factory RecipeModel.fromDocument(DocumentSnapshot<Map<String, dynamic>?> doc) {
    var model = RecipeModel.fromJson(doc.data()!);
    return model.copyWith(docId: doc.id);
  }

}