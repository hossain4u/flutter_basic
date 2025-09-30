import 'package:flutter/material.dart';
import 'package:mintapp/responsive/responsive.dart';

import 'expanded.dart';

void main(){
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      title: 'Responsive',
      debugShowCheckedModeBanner: false,
      home: ExpandedClass(),
    );
  }
}