// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  num get time => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  num get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  List<num> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "ingredients")
  List<String> get ingredients => throw _privateConstructorUsedError;
  @JsonKey(name: "instructions")
  String get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: "docId")
  String get docId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "time") num time,
      @JsonKey(name: "rating") num rating,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "category") List<num> categories,
      @JsonKey(name: "ingredients") List<String> ingredients,
      @JsonKey(name: "instructions") String instructions,
      @JsonKey(name: "docId") String docId});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res> implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  final RecipeModel _value;
  // ignore: unused_field
  final $Res Function(RecipeModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? categories = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? docId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<num>,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "time") num time,
      @JsonKey(name: "rating") num rating,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "category") List<num> categories,
      @JsonKey(name: "ingredients") List<String> ingredients,
      @JsonKey(name: "instructions") String instructions,
      @JsonKey(name: "docId") String docId});
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res> extends _$RecipeModelCopyWithImpl<$Res>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, (v) => _then(v as _$_RecipeModel));

  @override
  _$_RecipeModel get _value => super._value as _$_RecipeModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? rating = freezed,
    Object? image = freezed,
    Object? categories = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? docId = freezed,
  }) {
    return _then(_$_RecipeModel(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as num,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<num>,
      ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel extends _RecipeModel {
  const _$_RecipeModel(
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "category") final List<num> categories,
      @JsonKey(name: "ingredients") final List<String> ingredients,
      @JsonKey(name: "instructions") this.instructions,
      [@JsonKey(name: "docId") this.docId = ""])
      : _categories = categories,
        _ingredients = ingredients,
        super._();

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "time")
  final num time;
  @override
  @JsonKey(name: "rating")
  final num rating;
  @override
  @JsonKey(name: "image")
  final String image;
  final List<num> _categories;
  @override
  @JsonKey(name: "category")
  List<num> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _ingredients;
  @override
  @JsonKey(name: "ingredients")
  List<String> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  @JsonKey(name: "instructions")
  final String instructions;
  @override
  @JsonKey(name: "docId")
  final String docId;

  @override
  String toString() {
    return 'RecipeModel(name: $name, time: $time, rating: $rating, image: $image, categories: $categories, ingredients: $ingredients, instructions: $instructions, docId: $docId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.docId, docId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(docId));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(this);
  }
}

abstract class _RecipeModel extends RecipeModel {
  const factory _RecipeModel(
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "time") final num time,
      @JsonKey(name: "rating") final num rating,
      @JsonKey(name: "image") final String image,
      @JsonKey(name: "category") final List<num> categories,
      @JsonKey(name: "ingredients") final List<String> ingredients,
      @JsonKey(name: "instructions") final String instructions,
      [@JsonKey(name: "docId") final String docId]) = _$_RecipeModel;
  const _RecipeModel._() : super._();

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "time")
  num get time;
  @override
  @JsonKey(name: "rating")
  num get rating;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "category")
  List<num> get categories;
  @override
  @JsonKey(name: "ingredients")
  List<String> get ingredients;
  @override
  @JsonKey(name: "instructions")
  String get instructions;
  @override
  @JsonKey(name: "docId")
  String get docId;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
