
import 'package:categlory/core/model/meal_model.dart';

import 'http_request.dart';

class HZYMealRequest {
  static Future<List<HZYMealModel>> getMealData() async {
    //1.发送网络请求
    final url = "/meal";
    final result = await HttpRequest.request(url);

    //2.json转model
    final mealArray = result["meal"];
    List<HZYMealModel> meals = [];
    for(var json in mealArray) {
      meals.add(HZYMealModel.fromJson(json));
    }
    return meals;
  }
}