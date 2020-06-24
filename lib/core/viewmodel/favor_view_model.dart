import 'package:categlory/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class HZYFavorViewModel extends ChangeNotifier {
  List<HZYMealModel> _favorMeals = [];

  List<HZYMealModel> get favorMeals {
    return _favorMeals;
  }

  bool isFavor(HZYMealModel meal) {
    return _favorMeals.contains(meal);
  }

  void addMeal(HZYMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(HZYMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(HZYMealModel meal) {
    if(isFavor(meal)) {
      removeMeal(meal);
    }else {
      addMeal(meal);
    }
  }
}