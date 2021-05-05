import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _list=[
    Task(task: 'Get Milk'),
    Task(task: 'Buy pencil'),
    Task(task: 'do japa'),
  ];
  int get taskcount{
    return _list.length;
  }
  UnmodifiableListView<Task> get list{
return UnmodifiableListView(_list);
}
  void addTask(String newTask){
    final task=Task(task: newTask);
    _list.add(task);
    notifyListeners();
  }
  void updatetask(Task task){
    task.getdone();
    notifyListeners();
  }
  void removetask(Task task){
    _list.remove(task);
    notifyListeners();
  }
}