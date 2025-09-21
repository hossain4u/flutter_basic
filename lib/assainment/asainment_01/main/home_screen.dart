import 'package:flutter/material.dart';
import '../component/course_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> courselist = [
    {
      "title": "Full Stack Web Development with JavaScript (MERN)",
      "batch": "ব্যাচ ৬",
      "seat": "👨‍👦‍👦৬ সিট বাকি",
      "days": "🕒১২ দিন বাকি",
      "image": "https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg", // sample
    },
    {
      "title": "Full Stack Web Development with Python, Django & React",
      "batch": "ব্যাচ ৫",
      "seat": "👨‍👦‍👦৮৬ সিট বাকি",
      "days": "🕒১০ দিন বাকি",
      "image":
      "https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg", // sample
    },
    {
      "title": "Full Stack Web Development with ASP.Net Core",
      "batch": "ব্যাচ ৪",
      "seat": "👨‍👦‍👦৭৫ সিট বাকি",
      "days": "🕒৮ দিন বাকি",
      "image":
      "https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg", // sample
    },
    {
      "title": "SQA: Manual & Automated Testing",
      "batch": "ব্যাচ ৩০",
      "seat": "👨‍👦‍👦৬৫ সিট বাকি",
      "days": "🕒৮ দিন বাকি",
      "image":
      "https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg", // sample
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[30],

        appBar: AppBar(
          title: Text(
            'Ostad',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 45,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.orange, Colors.redAccent]),
            ),
          ),
        ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
            itemCount: courselist.length,
            itemBuilder: (context,index){
          final course=courselist[index];
          return CourseCards(
              title: course["title"]!,
              batch: course["batch"]!,
              hours: course["seat"]!,
              days: course["days"]!,
              imageUrl: course["image"]!,
          );
            }),

      )
      );
  }
}


