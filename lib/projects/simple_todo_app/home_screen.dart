import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];

  addTasks() {
    final task = taskController.text;
    if(task.isNotEmpty){
      setState(() {
        tasks.add(task);
        taskController.clear();
      });
    }

  }
  deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
      Navigator.pop(context);
    });
  }
  editTask(int index){
    final controller = TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Edit Task'),
      content: TextField(
        controller: controller ,
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancle")),
        ElevatedButton(onPressed: (){
          final newValue= controller.text;
          setState(() {
            if(newValue.isNotEmpty){
              tasks[index] = controller.text;
              Navigator.pop(context);
            }
          });
        }, child: Text("Update"))
      ],
    ));
  }

  confromDelete(int index){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Delete Tasks"),
      content: Text("Are you sure want to delete the task"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancle")),

        ElevatedButton(onPressed: ()=>deleteTask(index), child: Text("Conform"))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        title: Text(
          'Todo App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      hintText: "Write your task",
                      labelText: "Write here",
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.green.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.green, width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 1.2),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 5),

                ElevatedButton(
                  onPressed: addTasks,
                  child: Text(
                    'Add',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(80, 55),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: ()=> editTask(index),
                          icon: Icon(Icons.edit, color: Colors.green),
                        ),

                        IconButton(
                          onPressed: ()=> confromDelete(index),
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
