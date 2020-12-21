import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task1'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
