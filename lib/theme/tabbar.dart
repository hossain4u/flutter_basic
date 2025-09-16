import 'package:flutter/material.dart';

import '../basic/alart.dart';
import '../basic/appbar.dart';
import '../basic/login_page.dart';
import '../basic/stack.dart';
import '../view/gridview_class.dart';

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
              borderRadius: BorderRadius.circular(5),
            ),
            labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

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
            AlertClass(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/510239259_1065527725523268_2331663046724151418_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=2LFJtVjlyC0Q7kNvwEFQbNk&_nc_oc=AdkhNcEOfgkaCdrZSyjFx4U3KqJ0RlsIj5zecJfZzT92VEvylsLKY3jZf_RmlKRXtEA&_nc_zt=23&_nc_ht=scontent.fdac27-1.fna&_nc_gid=Nlaub0HOwLalDQTwTnbHMQ&oh=00_AfaAmmAB_rwocc7JbCOm6DqfU23MHalL0Ina_N1UTZRGmg&oe=68CCB263',
                      ),
                    ),
                    Text(
                      'Hossain Mahmmud',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridviewClass()),
                  );
                },
              ),
              Divider(),
              ListTile(title: Text('Menu')),
              Divider(),
              ListTile(title: Text('Top')),
              Divider(),
              ListTile(title: Text('Best')),
            ],
          ),
        ),
      ),
    );
  }
}
