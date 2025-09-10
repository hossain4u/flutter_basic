import 'package:flutter/material.dart';

class TestPageTwo extends StatelessWidget {
  const TestPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TEST TWO',
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
            gradient: LinearGradient(colors: [Colors.greenAccent, Colors.lime]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('This is test two page', style: TextStyle())),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Back')),

          ],
        ),
      ),
    );
  }
}