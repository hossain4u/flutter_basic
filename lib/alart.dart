import 'package:flutter/material.dart';

class AlertClass extends StatelessWidget {
  const AlertClass({super.key});

  @override
  Widget build(BuildContext context) {
    showAlertDialog() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete File'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning_rounded, color: Colors.red),
                    Text('Warning'),
                  ],
                ),
                SizedBox(height: 10),
                Text('Are you sure you want to delete this file?'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Confirm
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("File Deleted!")),
                  );
                },
                child: Text('Delete'),
              ),
            ],
          );
        },
      );
    }

    simpleDialog() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          backgroundColor: Colors.yellowAccent,
          title: Text('Simple Dialog example'),
          children: [
            SimpleDialogOption(child: Text('Option-1')),
            SimpleDialogOption(child: TextField()),
          ],
        ),
      );
    }

    showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose options',
            style: TextStyle(
              fontSize: 18,
            ),
            ),
            ListTile(
              title: Text('Option-01'),
            ),
            ListTile(
              title: Text('Option-02'),
            ),
            ListTile(
              title: Text('Option-03'),
            ),
            ListTile(
              title: Text('Option-04'),
            ),
          ],
        ),
      ));
    }

    showCustomDialog(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context)=>Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network('https://cdn.pixabay.com/photo/2019/08/09/10/04/landscape-4394746_960_720.jpg'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),
      ));
    }

    showLoadingDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircularProgressIndicator(),
              Text('  Loading...')
            ],
          ),
        ),
      ));
    }

    showSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('This is snackbar'))
    );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert Example',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 50,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.greenAccent]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Show Alert'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                simpleDialog();
              },
              child: Text('Dialog with options'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showBottomSheetAlert();
              },
              child: Text('Bottom sheet'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showCustomDialog();
              },
              child: Text('Custom Dialog'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showLoadingDialog();
              },
              child: Text('Loading Dialog'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showSnackBar();
              },
              child: Text('SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
