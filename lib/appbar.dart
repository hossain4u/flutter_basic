import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Mintapp',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        toolbarHeight: 50.0,
        //toolbarOpacity: 0.5,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(50)
        // ),
        //elevation: 6.2,
        //bottom: TabBar(tabs: [Tab(text: 'Home'),Tab(text: 'Profile',)]),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.blue.shade800],
            ),
          ),
        ),
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
