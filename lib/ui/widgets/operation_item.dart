import 'package:flutter/material.dart';
import 'package:categlory/core/extension/int_extension.dart';
class HZYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  final Color titleColor;
  HZYOperationItem(this._icon, this._title,{this.titleColor = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Row(
        children: <Widget>[
          _icon,
          SizedBox(width: 3.px,),
          Text(_title,style: TextStyle(color: titleColor),)
        ],
      ),
    );
  }
}
