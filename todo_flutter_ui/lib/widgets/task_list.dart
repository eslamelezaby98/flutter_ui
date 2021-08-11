import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/list_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.taskCounter,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return BuildListTile(
              title: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (checkBoxState) {
                taskData.updataTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
            );
          });
    });
  }
}
