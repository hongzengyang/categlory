

import 'package:flutter/cupertino.dart';

class HZYCategoryModel {
  String id;
  String title;
  String color;
  Color cColor;

  HZYCategoryModel({this.id, this.title, this.color});

  HZYCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];

    //1.将字符串color转成16进制数字
    final colorInt = int.parse(color,radix: 16);
    //2.将透明度加进去
    cColor = Color(colorInt | 0xff000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}