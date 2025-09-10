import 'package:flutter/material.dart';

class cityWidget extends StatelessWidget {
  final String img, title, rating;

  const cityWidget({
    super.key,
    required this.img,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: NetworkImage(img)),
          ),
        ),
        Positioned(
          bottom: 90,
          right: 150,
          left: 80,
          height: 50,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(rating, style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
        ),
      ],
    );
  }
}
