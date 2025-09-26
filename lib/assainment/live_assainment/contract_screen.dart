import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final List<Map<String, String>> contacts = [
    {"name": "Javad", "phone": "01877-777777"},
    {"name": "Ferdous", "phone": "01787-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Name",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Phone Number",
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Add",style: TextStyle(color: Colors.black),),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: const Icon(Icons.person, color: Colors.brown),
                      title: Text(contact["name"] ?? ""),
                      subtitle: Text(contact["phone"] ?? ""),
                      trailing: const Icon(Icons.phone, color: Colors.blue),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}