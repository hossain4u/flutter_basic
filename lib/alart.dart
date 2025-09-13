import 'package:flutter/material.dart';

class AlertClass extends StatelessWidget {
  const AlertClass({super.key});

  @override
  Widget build(BuildContext context) {
    showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete File'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning_rounded,color: Colors.red,),
                    Text('Warning'),
                  ],
                ),
                SizedBox(height: 10,),
                Text('Are you sure you want to delete this file?'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Confirm
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("File Deleted!")),
                  );
                },
                child: Text('Delete'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert Example',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 50,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.greenAccent]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Show Alert'),
            ),
          ],
        ),
      ),
    );
  }
}
