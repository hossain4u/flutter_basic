import 'package:flutter/material.dart';

class TravelInfoScreen extends StatelessWidget {
  const TravelInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Info"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Destination Image
            Image.network(
              "https://picsum.photos/800/400?travel",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),

            // Title & Location
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Santorini, Greece",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        "Greece, Europe",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      5,
                          (index) => const Icon(Icons.star, color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Description
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Santorini is one of the most beautiful islands in Greece, "
                    "famous for its whitewashed houses, blue-domed churches, "
                    "and stunning sunsets over the Aegean Sea.",
                style: TextStyle(fontSize: 16, height: 1.4),
              ),
            ),

            const Divider(),

            // Travel Info (row icons)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.flight_takeoff, color: Colors.teal),
                      SizedBox(height: 5),
                      Text("5h Flight"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.hotel, color: Colors.teal),
                      SizedBox(height: 5),
                      Text("120+ Hotels"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.beach_access, color: Colors.teal),
                      SizedBox(height: 5),
                      Text("Sunny"),
                    ],
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
