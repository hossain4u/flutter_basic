import 'package:flutter/material.dart';

class Asset extends StatelessWidget {
  const Asset({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneControllar = TextEditingController();
    TextEditingController passwordControllar = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FINESS PRO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
        toolbarHeight: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: phoneControllar,
                    cursorColor: Colors.brown,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                      labelText: 'Email address',
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                      suffixIcon: Icon(Icons.check),
                      prefixIcon: Icon(Icons.mail),
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
                        borderSide: BorderSide(color: Colors.blue, width: 1.2),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      contentPadding: EdgeInsets.all(15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
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
                        borderSide: BorderSide(color: Colors.blue, width: 1.2),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
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
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print(phoneControllar.text);
                          print(passwordControllar.text);
                          passwordControllar.clear();
                          phoneControllar.clear();
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: Offset(5, 6),
                  ),
                ],
              ),
              alignment: Alignment.center,
              height: 50,
              width: 150,
              child: Text('Container', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 50, width: 90),
              ),
            ),
            SizedBox(height: 50),
            Image.asset('assets/run.png', height: 150, width: 150),
          ],
        ),
      ),
    );
  }
}
