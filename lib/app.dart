import 'package:flutter/material.dart';
import 'appbar.dart';
import 'button.dart';
import 'gridview_class.dart';
import 'home.dart';
import 'login_page.dart';
import 'asset.dart';
import 'listviewclass.dart';
import 'stack.dart';
import 'test.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mintapp',
      home: StackClass()

    );
  }
}
