import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
