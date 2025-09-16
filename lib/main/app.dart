import 'package:flutter/material.dart';
import 'package:mintapp/theme/themes.dart';
import '../basic/alart.dart';
import '../basic/appbar.dart';
import '../theme/tabbar.dart';
import '../view/button.dart';
import '../view/gridview_class.dart';
import 'home.dart';
import '../basic/login_page.dart';
import '../basic/asset.dart';
import '../view/listviewclass.dart';
import '../basic/stack.dart';
import '../basic/test.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Mintapp',
      home: TabbarClass(),
    );
  }
}
