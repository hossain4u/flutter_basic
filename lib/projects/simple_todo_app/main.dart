import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(TodoApps());

}

class TodoApps extends StatelessWidget {
  const TodoApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}