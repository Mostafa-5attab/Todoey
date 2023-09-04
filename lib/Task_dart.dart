import 'package:flutter/cupertino.dart';
import 'package:todoey/task.dart';

class TaskDart extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "mostafa", isdone: false),
    Task(name: "ahmed", isdone: true)
  ];

  void addTask (newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task){
    tasks.remove(task);
    notifyListeners();
  }

}