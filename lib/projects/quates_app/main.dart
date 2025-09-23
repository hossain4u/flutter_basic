import 'package:flutter/material.dart';

import 'quates_screen.dart';

void main(){
  runApp(QuotesApp());

}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic Quates',
      debugShowCheckedModeBanner: false,
      home: QuatesScreen(),
    );
  }
}
