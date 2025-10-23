import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  List user =[];
  Future fachUser() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    headers: {
      'Accept':'application/json'
    }
    );

    if(response.statusCode ==200){
      user = jsonDecode(response.body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fachUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: user.length,
          itemBuilder: (context,index){
          final users = user[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(users['name'][0]),
              ),
              title: Text(users['name'],style: TextStyle(color: Colors.red),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('username:${users['username']}',style: TextStyle(color: Colors.grey),
                  ),
                  Text('Email:${users['email']}',style: TextStyle(color: Colors.black),
                  ),
                  Text('Phone:${users['phone']}',style: TextStyle(color: Colors.black),
                  ),
                  Text('Website:${users['website']}',style: TextStyle(color: Colors.black),
                  ),
            
                ],
              ),
            ),
          );
          }),
    );
  }
}
