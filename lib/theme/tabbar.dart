import 'package:flutter/material.dart';

import '../basic/alart.dart';
import '../basic/login_page.dart';
import '../basic/stack.dart';

class TabbarClass extends StatelessWidget {
  const TabbarClass({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Minapp', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          centerTitle: true,

          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.all(5),
            indicator: BoxDecoration(
              color: Colors.yellow,
              borderRadius:BorderRadius.circular(5),
            ),
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.black
            ),
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),

            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.white),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.topic, color: Colors.white),
                text: 'Menu',
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.white),
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Container(
            //   height: 300,
            //   color: Colors.blue,
            //   child: Center(
            //     child: Text(
            //       'Home',
            //       style: TextStyle(
            //           fontSize: 25,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 300,
            //   color: Colors.pink,
            //   child: Center(
            //     child: Text(
            //       'Menu',
            //       style: TextStyle(
            //           fontSize: 25,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 300,
            //   color: Colors.orange,
            //   child: Center(
            //     child: Text(
            //       'settings',
            //       style: TextStyle(
            //           fontSize: 25,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            LoginPage(),
            StackClass(),
            AlertClass()
          ],
        ),
      ),
    );
  }
}
