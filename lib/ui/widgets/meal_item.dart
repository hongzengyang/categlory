
import 'package:categlory/core/model/meal_model.dart';
import 'package:categlory/core/viewmodel/favor_view_model.dart';
import 'package:categlory/ui/pages/detail/detail.dart';
import 'package:categlory/ui/widgets/operation_item.dart';
import 'package:flutter/material.dart';
import 'package:categlory/core/extension/int_extension.dart';
import 'package:provider/provider.dart';

class HZYMealItem extends StatelessWidget {
  final HZYMealModel _meal;

  HZYMealItem(this._meal);

  final _cardRadius = 12.px;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_cardRadius)
        ),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo()
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(HZYDetailScreen.routeName,arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_cardRadius),
            topRight: Radius.circular(_cardRadius),
          ),
          child: Image.network(_meal.imageUrl,width: double.infinity,height: 250.px,fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 5.px,
          right: 10.px,
          child: Container(
            width: 250.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px,vertical: 5.px),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(
              _meal.title,
              style: Theme.of(context).textTheme.display3.copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          HZYOperationItem(Icon(Icons.schedule),"${_meal.duration}分钟"),
          HZYOperationItem(Icon(Icons.restaurant),"${_meal.complexityText}"),
          buildFavorItem()
        ],
      ),
    );
  }

  Widget buildFavorItem() {
    return Consumer<HZYFavorViewModel>(
      builder: (context, favorVM, child) {
        final iconData = favorVM.isFavor(_meal) ? Icons.favorite : Icons.favorite_border;
        final favorColor = favorVM.isFavor(_meal) ? Colors.red : Colors.black;
        return GestureDetector(
          child: HZYOperationItem(
            Icon(iconData,color: favorColor,),favorVM.isFavor(_meal)?"已收藏":"未收藏",titleColor: favorColor,
          ),
          onTap: () {
            favorVM.handleMeal(_meal);
          },
        );
      },
    );
  }
}
