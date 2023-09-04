
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/TaskTitle.dart';
import 'package:todoey/Task_dart.dart';


class taskList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDart>(
      builder :(context, taskDart ,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTitle(
              taskTitle: taskDart.tasks[index].name,
              isChecked: taskDart.tasks[index].isdone,
              function: (bool checkboxState) {
                taskDart.updateTask(taskDart.tasks[index]);
              },
              delete: (){
                taskDart.deleteTask(taskDart.tasks[index]);
              },

            );
          },
          itemCount: Provider.of<TaskDart>(context).tasks.length,
        );
    }
    );
  }
}
