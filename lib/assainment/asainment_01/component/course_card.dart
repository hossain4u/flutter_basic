import 'package:flutter/material.dart';

class CourseCards extends StatelessWidget {
  final String title, batch, hours, days, imageUrl;

  const CourseCards({super.key,
    required this.title,
    required this.batch,
    required this.hours,
    required this.days,
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      //card section
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Image section
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 100,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10,),

            // Batch, Hours, Days
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _shortTaq(batch, Colors.black),
                _shortTaq(hours, Colors.black),
                _shortTaq(days, Colors.black)
              ],
            ),
            SizedBox(height: 10,),

                //title
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const Spacer(),

            //Bottom
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black87,
                  ),
                  child: Text('বিস্তারিত দেখুন →', style: TextStyle(fontWeight: FontWeight.bold),), ),
            )
          ],
        ),
      ),
    );
  }
}
Widget _shortTaq (String text, Color color){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
    decoration: BoxDecoration(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(3),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 8,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    ),
  );


}
