import 'package:flutter/material.dart';

class ResClass extends StatelessWidget {
  const ResClass({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final isTablet = screenSize.width > 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Responsive'),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Fixe size', style: TextStyle(fontSize: 20)),
              SizedBox(height: 5),
              Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: Text('100*200'),
              ),
              Text('Aspect Ratio', style: TextStyle(fontSize: 20)),
              SizedBox(height: 5),
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(color: Colors.red),
              ),
              SizedBox(height: 5),
              Container(
                color: Colors.blue,
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.5,
              ),

              Text(
                'Media Quary Text',
                style: TextStyle(fontSize: screenSize.width > 600 ? 32 : 18),
              ),

              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(color: Colors.yellowAccent, height: 60),
              ),

              orientation == Orientation.landscape
                  ? Text(
                      'This is ln mood',
                      style: TextStyle(fontSize: 32, color: Colors.red),
                    )
                  : SizedBox(),

              orientation == Orientation.portrait
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.phone_android, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.desktop_windows, size: 50),
                        Icon(Icons.apple, size: 50),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.phone_android, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.desktop_windows, size: 50),
                        Icon(Icons.apple, size: 50),
                      ],
                    ),

              isTablet
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
