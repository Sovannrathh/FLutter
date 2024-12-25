import 'package:flutter/material.dart';
import 'package:to_do_task_app/models/todo.dart';
import 'package:to_do_task_app/widgets/todo_item.dart';
import '../constants/colors.dart';
import 'package:to_do_task_app/widgets/custom_appbar.dart';

class CompletedTasksScreen extends StatelessWidget {
  final List<ToDo> completedTasks;

  const CompletedTasksScreen({super.key , required this.completedTasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: ('Completed Task'),
        backgroundColor: tdBlue,
      ),
      body: completedTasks.isEmpty
      ? const Center(
        child: Text('No completed tasks yet',
        style: TextStyle(fontSize: 18, color: tdGray),
      ),
    )
    : ListView.builder(
      itemCount: completedTasks.length,
      itemBuilder: (context, index){
        return TodoItem(
          todo: completedTasks[index],
          onToDoChanged: (_) {}, 
          onDeleteItem: (_) {}, onTapItem: () {},
        );
      },
    ),
    );
  }
}
