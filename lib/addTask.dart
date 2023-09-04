import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Task_dart.dart';

class addTask extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // var newTextTitle = TextEditingController();
    late String newTextTitle ;
    return Container(
      color: Color(0xff757573),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Add Task",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (value){
                  newTextTitle = value;
                },
                // controller: newTextTitle,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(20), left: Radius.circular(20)),
                    )),
                cursorColor: Colors.lightBlue,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  autofocus: true,
                  color: Colors.lightBlue,
                  onPressed: () {

                      Provider.of<TaskDart>(context, listen: false).addTask(newTextTitle);
                      Navigator.pop(context);

                  },
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

