import 'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
  const ExpandedClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Expanded'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: Expanded(
              child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(index.toString()),
                    );
                  }),
            ),
          ),

          Flexible(
            flex: 1,
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 200,
              color: Colors.yellow,
            ),
          )



        ],),
    );
  }
}
