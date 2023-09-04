import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Task_dart.dart';
import 'package:todoey/tasks_screen.dart';

void main(){
  runApp(todey());
}

class todey extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) => TaskDart(),
      child: MaterialApp(
        home: tasks_screen(),
      ),
    );
  }

}