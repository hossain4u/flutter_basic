import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  const ListViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body:ListView.separated(
        itemCount: 12,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('Friends $index'),
              subtitle: Text('01903803963'),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
        separatorBuilder:(context,index){
          return Divider(
            //thickness: 4,
            //color: Colors.red,
          );
        },

        // body: ListView.builder(
        //   itemCount: 20,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.phone),
        //         title: Text('Friends $index'),
        //         subtitle: Text('01903803963'),
        //         trailing: Icon(Icons.delete, color: Colors.red),
        //       ),
        //     );
        //   },
        // ),

        // body: ListView(
        //   children: [
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Hossain'),
        //       subtitle: Text('01903803963'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Imran'),
        //       subtitle: Text('01925698435'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Abdullah'),
        //       subtitle: Text('01948612395'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Samir'),
        //       subtitle: Text('01923659812'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Majed khan'),
        //       subtitle: Text('01903803963'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Mamun Sikdar'),
        //       subtitle: Text('01948512639'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Jisan'),
        //       subtitle: Text('01948152698'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Shuvo'),
        //       subtitle: Text('01903805684'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Adib'),
        //       subtitle: Text('01903809874'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Rifat'),
        //       subtitle: Text('01903803987'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Eusuf'),
        //       subtitle: Text('01903814789'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Soikot Roy'),
        //       subtitle: Text('01903801485'),
        //       trailing: Icon(Icons.delete, color: Colors.red,),
        //     ),
        //
        //
        //
        //   ],
        // ),
      ),
    );
  }
}
