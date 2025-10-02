import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mintapp/responsive/res_pkg.dart';
import 'package:mintapp/responsive/responsive.dart';

import 'expanded.dart';

void main(){
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      title: 'Responsive',
      debugShowCheckedModeBanner: false,
      home: ResPkg(),
    );
    }
    );}
}