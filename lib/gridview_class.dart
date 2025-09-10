import 'package:flutter/material.dart';

class GridviewClass extends StatelessWidget {
  const GridviewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text('Gridview', style: TextStyle(color: Colors.white)),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            color: Colors.brown[100*((index%8)+1)],
            child: Center(
              child: Text('shep $index'),
            ),
          );
        },
      ),
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 5,
      //   children: List.generate(12, (index) {
      //     return Card(
      //       elevation: 10,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(15),
      //       ),
      //       color: Colors.brown,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone, color: Colors.white),
      //           Text('Cash out',
      //           style: TextStyle(
      //             color: Colors.white,
      //
      //           ),
      //           ),
      //         ],
      //       ),
      //     );
      //   }),
      // ),
    );
  }
}
