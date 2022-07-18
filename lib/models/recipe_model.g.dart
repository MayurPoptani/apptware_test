// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      json['name'] as String,
      json['time'] as num,
      json['rating'] as num,
      json['image'] as String,
      (json['category'] as List<dynamic>).map((e) => e as num).toList(),
      (json['ingredients'] as List<dynamic>).map((e) => e as String).toList(),
      json['instructions'] as String,
      json['docId'] as String? ?? "",
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'rating': instance.rating,
      'image': instance.image,
      'category': instance.categories,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'docId': instance.docId,
    };
