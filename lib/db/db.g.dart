// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class RecipeDBModelData extends DataClass
    implements Insertable<RecipeDBModelData> {
  final String docId;
  final String name;
  final int time;
  final double rating;
  final String image;
  final String categories;
  final String instructions;
  final String ingredients;
  RecipeDBModelData(
      {required this.docId,
      required this.name,
      required this.time,
      required this.rating,
      required this.image,
      required this.categories,
      required this.instructions,
      required this.ingredients});
  factory RecipeDBModelData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RecipeDBModelData(
      docId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}doc_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      time: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time'])!,
      rating: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rating'])!,
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image'])!,
      categories: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}categories'])!,
      instructions: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}instructions'])!,
      ingredients: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ingredients'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['doc_id'] = Variable<String>(docId);
    map['name'] = Variable<String>(name);
    map['time'] = Variable<int>(time);
    map['rating'] = Variable<double>(rating);
    map['image'] = Variable<String>(image);
    map['categories'] = Variable<String>(categories);
    map['instructions'] = Variable<String>(instructions);
    map['ingredients'] = Variable<String>(ingredients);
    return map;
  }

  RecipeDBModelCompanion toCompanion(bool nullToAbsent) {
    return RecipeDBModelCompanion(
      docId: Value(docId),
      name: Value(name),
      time: Value(time),
      rating: Value(rating),
      image: Value(image),
      categories: Value(categories),
      instructions: Value(instructions),
      ingredients: Value(ingredients),
    );
  }

  factory RecipeDBModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeDBModelData(
      docId: serializer.fromJson<String>(json['docId']),
      name: serializer.fromJson<String>(json['name']),
      time: serializer.fromJson<int>(json['time']),
      rating: serializer.fromJson<double>(json['rating']),
      image: serializer.fromJson<String>(json['image']),
      categories: serializer.fromJson<String>(json['categories']),
      instructions: serializer.fromJson<String>(json['instructions']),
      ingredients: serializer.fromJson<String>(json['ingredients']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'docId': serializer.toJson<String>(docId),
      'name': serializer.toJson<String>(name),
      'time': serializer.toJson<int>(time),
      'rating': serializer.toJson<double>(rating),
      'image': serializer.toJson<String>(image),
      'categories': serializer.toJson<String>(categories),
      'instructions': serializer.toJson<String>(instructions),
      'ingredients': serializer.toJson<String>(ingredients),
    };
  }

  RecipeDBModelData copyWith(
          {String? docId,
          String? name,
          int? time,
          double? rating,
          String? image,
          String? categories,
          String? instructions,
          String? ingredients}) =>
      RecipeDBModelData(
        docId: docId ?? this.docId,
        name: name ?? this.name,
        time: time ?? this.time,
        rating: rating ?? this.rating,
        image: image ?? this.image,
        categories: categories ?? this.categories,
        instructions: instructions ?? this.instructions,
        ingredients: ingredients ?? this.ingredients,
      );
  @override
  String toString() {
    return (StringBuffer('RecipeDBModelData(')
          ..write('docId: $docId, ')
          ..write('name: $name, ')
          ..write('time: $time, ')
          ..write('rating: $rating, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('instructions: $instructions, ')
          ..write('ingredients: $ingredients')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      docId, name, time, rating, image, categories, instructions, ingredients);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeDBModelData &&
          other.docId == this.docId &&
          other.name == this.name &&
          other.time == this.time &&
          other.rating == this.rating &&
          other.image == this.image &&
          other.categories == this.categories &&
          other.instructions == this.instructions &&
          other.ingredients == this.ingredients);
}

class RecipeDBModelCompanion extends UpdateCompanion<RecipeDBModelData> {
  final Value<String> docId;
  final Value<String> name;
  final Value<int> time;
  final Value<double> rating;
  final Value<String> image;
  final Value<String> categories;
  final Value<String> instructions;
  final Value<String> ingredients;
  const RecipeDBModelCompanion({
    this.docId = const Value.absent(),
    this.name = const Value.absent(),
    this.time = const Value.absent(),
    this.rating = const Value.absent(),
    this.image = const Value.absent(),
    this.categories = const Value.absent(),
    this.instructions = const Value.absent(),
    this.ingredients = const Value.absent(),
  });
  RecipeDBModelCompanion.insert({
    required String docId,
    required String name,
    required int time,
    required double rating,
    required String image,
    required String categories,
    required String instructions,
    required String ingredients,
  })  : docId = Value(docId),
        name = Value(name),
        time = Value(time),
        rating = Value(rating),
        image = Value(image),
        categories = Value(categories),
        instructions = Value(instructions),
        ingredients = Value(ingredients);
  static Insertable<RecipeDBModelData> custom({
    Expression<String>? docId,
    Expression<String>? name,
    Expression<int>? time,
    Expression<double>? rating,
    Expression<String>? image,
    Expression<String>? categories,
    Expression<String>? instructions,
    Expression<String>? ingredients,
  }) {
    return RawValuesInsertable({
      if (docId != null) 'doc_id': docId,
      if (name != null) 'name': name,
      if (time != null) 'time': time,
      if (rating != null) 'rating': rating,
      if (image != null) 'image': image,
      if (categories != null) 'categories': categories,
      if (instructions != null) 'instructions': instructions,
      if (ingredients != null) 'ingredients': ingredients,
    });
  }

  RecipeDBModelCompanion copyWith(
      {Value<String>? docId,
      Value<String>? name,
      Value<int>? time,
      Value<double>? rating,
      Value<String>? image,
      Value<String>? categories,
      Value<String>? instructions,
      Value<String>? ingredients}) {
    return RecipeDBModelCompanion(
      docId: docId ?? this.docId,
      name: name ?? this.name,
      time: time ?? this.time,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      categories: categories ?? this.categories,
      instructions: instructions ?? this.instructions,
      ingredients: ingredients ?? this.ingredients,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docId.present) {
      map['doc_id'] = Variable<String>(docId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (time.present) {
      map['time'] = Variable<int>(time.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(categories.value);
    }
    if (instructions.present) {
      map['instructions'] = Variable<String>(instructions.value);
    }
    if (ingredients.present) {
      map['ingredients'] = Variable<String>(ingredients.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeDBModelCompanion(')
          ..write('docId: $docId, ')
          ..write('name: $name, ')
          ..write('time: $time, ')
          ..write('rating: $rating, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('instructions: $instructions, ')
          ..write('ingredients: $ingredients')
          ..write(')'))
        .toString();
  }
}

class $RecipeDBModelTable extends RecipeDBModel
    with TableInfo<$RecipeDBModelTable, RecipeDBModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeDBModelTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<String?> docId = GeneratedColumn<String?>(
      'doc_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<int?> time = GeneratedColumn<int?>(
      'time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double?> rating = GeneratedColumn<double?>(
      'rating', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoriesMeta = const VerificationMeta('categories');
  @override
  late final GeneratedColumn<String?> categories = GeneratedColumn<String?>(
      'categories', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _instructionsMeta =
      const VerificationMeta('instructions');
  @override
  late final GeneratedColumn<String?> instructions = GeneratedColumn<String?>(
      'instructions', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _ingredientsMeta =
      const VerificationMeta('ingredients');
  @override
  late final GeneratedColumn<String?> ingredients = GeneratedColumn<String?>(
      'ingredients', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [docId, name, time, rating, image, categories, instructions, ingredients];
  @override
  String get aliasedName => _alias ?? 'recipe_d_b_model';
  @override
  String get actualTableName => 'recipe_d_b_model';
  @override
  VerificationContext validateIntegrity(Insertable<RecipeDBModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('categories')) {
      context.handle(
          _categoriesMeta,
          categories.isAcceptableOrUnknown(
              data['categories']!, _categoriesMeta));
    } else if (isInserting) {
      context.missing(_categoriesMeta);
    }
    if (data.containsKey('instructions')) {
      context.handle(
          _instructionsMeta,
          instructions.isAcceptableOrUnknown(
              data['instructions']!, _instructionsMeta));
    } else if (isInserting) {
      context.missing(_instructionsMeta);
    }
    if (data.containsKey('ingredients')) {
      context.handle(
          _ingredientsMeta,
          ingredients.isAcceptableOrUnknown(
              data['ingredients']!, _ingredientsMeta));
    } else if (isInserting) {
      context.missing(_ingredientsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RecipeDBModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RecipeDBModelData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RecipeDBModelTable createAlias(String alias) {
    return $RecipeDBModelTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $RecipeDBModelTable recipeDBModel = $RecipeDBModelTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [recipeDBModel];
}
