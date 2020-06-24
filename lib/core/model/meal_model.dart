// To parse this JSON data, do
//
//     final hzyMealModel = hzyMealModelFromJson(jsonString);

import 'dart:convert';

HZYMealModel hzyMealModelFromJson(String str) => HZYMealModel.fromJson(json.decode(str));

String hzyMealModelToJson(HZYMealModel data) => json.encode(data.toJson());

List<String> complexes = ["简单","中等","困难"];

class HZYMealModel {
  HZYMealModel({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexityText,
    this.complexity,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String complexityText;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  factory HZYMealModel.fromJson(Map<String, dynamic> json) => HZYMealModel(
    id: json["id"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    title: json["title"],
    affordability: json["affordability"],
    complexityText: complexes[json["affordability"]],
    complexity: json["complexity"],
    imageUrl: json["imageUrl"],
    duration: json["duration"],
    ingredients: List<String>.from(json["ingredients"].map((x) => x)),
    steps: List<String>.from(json["steps"].map((x) => x)),
    isGlutenFree: json["isGlutenFree"],
    isVegan: json["isVegan"],
    isVegetarian: json["isVegetarian"],
    isLactoseFree: json["isLactoseFree"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "title": title,
    "affordability": affordability,
    "complexity": complexity,
    "imageUrl": imageUrl,
    "duration": duration,
    "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
    "steps": List<dynamic>.from(steps.map((x) => x)),
    "isGlutenFree": isGlutenFree,
    "isVegan": isVegan,
    "isVegetarian": isVegetarian,
    "isLactoseFree": isLactoseFree,
  };
}
