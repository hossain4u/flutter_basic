import 'package:flutter/material.dart';
import 'package:mintapp/test_2.dart';
import 'stack.dart';

class TestPage extends StatelessWidget {
  final name;
  const TestPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'test view',
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
            Column(
              children: [
                Center(child: Text('This is test page', style: TextStyle())),
                Center(child: Text(name)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TestPageTwo()));
            }, child: Text('Next page')),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushAndRemoveUntil(
            //       context,
            //       MaterialPageRoute(builder: (context) => TestPageTwo()),(route)=>false
            //     );
            //   },
            //   child: Text('Next'),
            // ),
          ],
        ),
      ),
    );
  }
}
