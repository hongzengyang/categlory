import 'package:categlory/core/model/meal_model.dart';
import 'package:categlory/core/services/meal_request.dart';
import 'package:flutter/cupertino.dart';

class HZYMealViewModel extends ChangeNotifier {
  List<HZYMealModel> _meals = [];

  List<HZYMealModel> get meals {
    return _meals;
  }

  HZYMealViewModel() {
    HZYMealRequest.getMealData().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}