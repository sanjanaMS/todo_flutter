import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tile.dart';

class Listoftasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskData>(
      builder: (context,taskData,child){
        return  ListView.builder(

          itemBuilder: (context,index){
          return Tile(
              tasktitle:taskData.list[index].task,
              toggletextdecoration: taskData.list[index].isdone,
              checkboxcallback:(valuefromonchange){
                taskData.updatetask(taskData.list[index]);
              },
              longPressCallBack: (){
                taskData.removetask(taskData.list[index]);
          },
          );
        },
          itemCount: taskData.taskcount,
        );
      },

    );
  }
}
