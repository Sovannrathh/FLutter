import 'package:flutter/material.dart';
import '../models/todo.dart';
import 'package:to_do_task_app/constants/colors.dart';

class TaskDetailsScreen extends StatelessWidget {
  final ToDo task;

  const TaskDetailsScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        backgroundColor: tdBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.todoText ?? 'No Title',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Status: ', style: TextStyle(fontSize: 18)),
                Text(
                  task.isDone ? 'completed' : 'Pending',
                  style: TextStyle(
                    fontSize: 18,
                    color: task.isDone ? Colors.green : tdRed,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Tasks'),
            ),
          ],
        ),
      ),
    );
  }
}
