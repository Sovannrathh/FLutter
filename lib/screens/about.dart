import 'package:flutter/material.dart';
import 'package:to_do_task_app/constants/colors.dart';
import 'package:to_do_task_app/widgets/custom_appbar.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'About',
        backgroundColor: tdBlue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To-Do Task App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Version:1.0.0',
            style: TextStyle(fontSize:18),
            ),
            SizedBox(height: 20),
            Text('This app helps you manage your daily tasks efficiently.',
            style: TextStyle(fontSize:16),
            ),
            SizedBox(height: 20),
            Text('Developed by: Rath',
            style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}