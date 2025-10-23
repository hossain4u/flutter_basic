import 'package:flutter/material.dart';

class CrudProject extends StatefulWidget {
  const CrudProject({super.key});

  @override
  State<CrudProject> createState() => _CrudProjectState();
}

class _CrudProjectState extends State<CrudProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Gallery'),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Image.network(
                    'https://cdn.shoplightspeed.com/shops/611228/files/59923770/650x750x2/adidas-arsenal-23-24-third-jersey-teal-navy.jpg',
                  ),
                ),
                Text(
                  'Arsenal Third Jersey',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Price : \$15 | QTY : 85",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.orange),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
