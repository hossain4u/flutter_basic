import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("My Portfolio"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Section
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://picsum.photos/200"), // replace with your photo
            ),
            const SizedBox(height: 12),
            const Text(
              "John Doe",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // About Section
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "About Me",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "I am a passionate Flutter developer with a love for creating beautiful and functional mobile apps. "
                          "I enjoy problem-solving and building clean user interfaces.",
                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Skills Section
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Skills",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("✅ Flutter & Dart"),
                    Text("✅ Firebase Integration"),
                    Text("✅ REST APIs"),
                    Text("✅ UI/UX Design"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Projects Section
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Projects",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.phone_android, color: Colors.teal),
                      title: Text("Travel Info App"),
                      subtitle: Text("A Flutter app for travel guides."),
                    ),
                    ListTile(
                      leading: Icon(Icons.format_quote, color: Colors.teal),
                      title: Text("Quotes App"),
                      subtitle: Text("A simple app to show daily quotes."),
                    ),
                    ListTile(
                      leading: Icon(Icons.work, color: Colors.teal),
                      title: Text("Portfolio Page"),
                      subtitle: Text("A static portfolio UI in Flutter."),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Contact Section
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Contact",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.teal),
                      title: Text("john.doe@example.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.teal),
                      title: Text("+123 456 789"),
                    ),
                    ListTile(
                      leading: Icon(Icons.link, color: Colors.teal),
                      title: Text("www.johndoe.dev"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
