import 'package:flutter/material.dart';

import '../basic/alart.dart';
import '../basic/stack.dart';
import '../view/listviewclass.dart';

class AppThemes extends StatelessWidget {
  const AppThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
        primarySwatch: Colors.deepPurple,
        //scaffoldBackgroundColor: Colors.tealAccent
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.yellow),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.lightBlueAccent),
          ),
        ),

        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        ),

        cardTheme: CardThemeData(
          //color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        )

      ),
      //darkTheme: ThemeData(),
      //themeMode: ThemeMode.system,
      title: 'AppTheme',
      debugShowCheckedModeBanner: true,
      home: AlertClass(),
    );
  }
}
