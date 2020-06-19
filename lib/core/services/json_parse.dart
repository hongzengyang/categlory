import 'dart:convert';

import 'package:categlory/core/model/category_model.dart';
import 'package:flutter/services.dart';

class JsonParse {
  static Future<List<HZYCategoryModel>> getCategoryData () async {
    //1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    //2.将jsonString转成Map/List
    final result = json.decode(jsonString);

    //3.将Map中的内容转成对象
    final resultList = result["category"];
    List<HZYCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(HZYCategoryModel.fromJson(json));
    }

    return categories;
  }
}