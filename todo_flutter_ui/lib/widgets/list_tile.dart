import 'package:flutter/material.dart';


class BuildListTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallback;
  final Function longPressCallback;

  BuildListTile(
      {this.title,
      this.isChecked,
      this.checkBoxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: Colors.red,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
