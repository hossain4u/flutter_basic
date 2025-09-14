import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red[100], diract
      //backgroundColor: Colors.grey.withOpacity(0.8), indiract
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Mintapp',
          style: TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 50,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.blue.shade800],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Text('Click'),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 30,
              //width: 120,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Text('Push'),
            ),
            SizedBox(height: 10),
            TextButton(onPressed: () {}, child: Text('Read more')),
            Icon(Icons.login, size: 40, color: Colors.brown),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 55, color: Colors.blue.shade800),
            ),
            GestureDetector(
              onDoubleTap: (){
                print('you have double pass the oftion');
              },
              onLongPress: (){
                print('you have long passed');
              },
              onTap: (){
                print('you have click the text');
              },
              child: Text('Click the text',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black38
              ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap:(){
                print('why you pass the text?'
                    '');
              },
              child: Text('Dont click here',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black38
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
          onPressed: (){
        print('add to image');
      }, child: Icon(Icons.camera)),
    );
  }
}
