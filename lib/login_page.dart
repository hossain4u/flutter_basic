import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneControllar = TextEditingController();
    TextEditingController passwordControllar = TextEditingController();
    final _formloginkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MINTAPP',
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
            gradient: LinearGradient(colors: [Colors.orange, Colors.redAccent]),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Form(
              key: _formloginkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: phoneControllar,
                    maxLength: 11,
                    cursorColor: Colors.brown,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      labelText: 'Phone number',
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                      suffixIcon: Icon(Icons.check),
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 1.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1.2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.orange[50],
                      contentPadding: EdgeInsets.all(15),
                    ),
                    validator: (values) {
                      if (values == null || values.isEmpty) {
                        return 'please enter your phone number';
                      } else if (values.length != 11) {
                        return 'please enter currect phone number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: passwordControllar,
                    obscureText: true,
                    cursorColor: Colors.brown,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 1.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1.2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.orange[50],
                      contentPadding: EdgeInsets.all(10),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter you password';
                      } else if (value.length < 8) {
                        return 'Password must be at last 8 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        if (_formloginkey.currentState!.validate()) {
                          print(phoneControllar.text);
                          print(passwordControllar.text);
                          passwordControllar.clear();
                          phoneControllar.clear();
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
