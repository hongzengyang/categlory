
import 'package:flutter/material.dart';
import 'package:categlory/core/extension/int_extension.dart';
class HZYHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.px,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.restaurant), "进餐", () {
              Navigator.of(context).pop();
            }),
            buildListTile(context, Icon(Icons.settings), "过滤", () {

            }),
          ],
        ),
      )
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      height: 120.px,
      alignment: Alignment(0,0.4),
      child: Text("开始动手",style: Theme.of(context).textTheme.display3.copyWith(fontWeight: FontWeight.bold),),
    );
  }

  Widget buildListTile(BuildContext context, Widget icon, String title,Function handle) {
    return ListTile(
      leading: icon,
      title: Text(title,style: Theme.of(context).textTheme.display2,),
      onTap: handle,
    );
  }
}
