import 'package:flutter/material.dart';

class CustomFlatbutton extends StatelessWidget {
  final Function btnpress;
  final String labeltext;

  const CustomFlatbutton({
    Key key, this.btnpress, this.labeltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        textColor: Colors.blue,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(width: 3, color: Colors.blue)),
        child: Text(
          labeltext.toUpperCase(),
        ),
        onPressed: btnpress);
  }
}
