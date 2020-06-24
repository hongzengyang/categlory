import 'package:categlory/core/model/meal_model.dart';
import 'package:categlory/core/extension/int_extension.dart';
import 'package:flutter/material.dart';
class HZYDetailContent extends StatelessWidget {

  final HZYMealModel _meal;
  HZYDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),
          buildMakeTitle(context,"制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context,"制作步骤"),
          buildMakeSteps(context),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
  
  //1.横幅
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl,fit: BoxFit.cover,),
    );
  }
  //2.制作材料
  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContent(
      context: context,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _meal.ingredients.length,
        itemBuilder: (ctx, index) {
          return Card(
            color: Theme.of(context).accentColor,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.px,vertical: 5.px),
                child: Text(_meal.ingredients[index])
            ),
          );
        },
      ),
    );
  }
  //3.制作步骤
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContent(
      context: context,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: _meal.steps.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("#${index+1}",style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),),
            ),
            title: Text(_meal.steps[index]),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
      )
    );
  }

  //公共方法
  Widget buildMakeTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.px),
        child: Text(title,style: Theme.of(context).textTheme.display3.copyWith(fontWeight: FontWeight.bold),)
    );
  }

  Widget buildMakeContent({BuildContext context, Widget child}) {
    return Container(
      width: MediaQuery.of(context).size.width - 30.px,
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.px),
          border: Border.all(
            color: Colors.grey,
          )
      ),
      child: child
    );
  }
}
