import 'package:flutter/material.dart';

import '../idea/for_travle_app.dart';
import '../idea/portfolio_page.dart';

class BottomNev extends StatefulWidget {
  const BottomNev({super.key});

  @override
  State<BottomNev> createState() => _BottomNevState();
}

class _BottomNevState extends State<BottomNev> {
  int _selectedIndex = 0;
  List get page => [
    PortfolioPage(),
    TravelInfoScreen()
  ];

  onTab(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: onTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
          ]

      ),
    );
  }
}
