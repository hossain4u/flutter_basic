import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResPkg extends StatelessWidget {
  const ResPkg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('ResPkg'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 200,
            ),
            Container(
              color: Colors.green,
              height: 200,
              width: 300,
            ),
            Text('This is text',
            style: TextStyle(
              fontSize: 20
            ),
            ),
            Container(
              color: Colors.purple,
              height: 200.h,
              width: 300.w,
            ),
            Text('This is text2',
              style: TextStyle(
                  fontSize: 20.sp
              ),
            ),
          ],
        ),
      ),
    );
  }
}
