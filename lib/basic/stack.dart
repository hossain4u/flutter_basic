import 'package:flutter/material.dart';
import 'package:mintapp/widgets/city_widget.dart';
import 'test.dart';

class StackClass extends StatelessWidget {
  const StackClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('StackView', style: TextStyle(color: Colors.white)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(color: Colors.blue, height: 80, width: 80),
                Positioned(
                  right: 30,
                  left: 50,
                  top: 70,
                  bottom: 30,
                  child: Container(color: Colors.blue, height: 50, width: 50),
                ),
              ],
            ),
            SizedBox(height: 40),
            Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    'https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/510239259_1065527725523268_2331663046724151418_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFngCLbNn-VDDg3JAkyEISu4csRT2DVbe3hyxFPYNVt7XHMpnxql-oQmV7Ul3ekRtRHAwi6HWZB4lYto7kjcoKm&_nc_ohc=opjn0bCpKH8Q7kNvwG6JLdU&_nc_oc=AdmIs47UiCtnouVmXbtprNDV1kiMEwk2SBT_ux6XqYmqaS_zOrr8W4LgAVgmD_X4lhM&_nc_zt=23&_nc_ht=scontent.fdac27-1.fna&_nc_gid=YnfgyFZDZOXVTispeQzLAw&oh=00_AfZCXTlS3QbRrVEK1ST4CxlqrSsGD8_W2iTX00usTlNVSg&oe=68C4C963',
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cityWidget(
                    img:
                        'https://static.vecteezy.com/system/resources/thumbnails/006/422/389/small_2x/high-angle-view-of-dhaka-city-residential-and-financial-buildings-at-sunny-day-photo.jpg',
                    title: 'Dhaka',
                    rating: '2.5',
                  ),
                  cityWidget(
                    img:
                        'https://media.istockphoto.com/id/1499025854/photo/touristic-sightseeing-ships-in-istanbul-city-turkey.jpg?s=612x612&w=0&k=20&c=K43B2lq3aH_G1uzE8z48Oz0HDokFhCV1rbwzZh3iP_k=',
                    title: 'Istanbul',
                    rating: '8.5',
                  ),
                  cityWidget(
                    img:
                        'https://i.natgeofe.com/n/b234ec7d-a988-4b75-9e65-749ddcbea7a0/citylife_berlin_2B4H3T1_web.jpg',
                    title: 'Berlin',
                    rating: '5.5',
                  ),
                  cityWidget(
                    img:
                        'https://i0.wp.com/gate1travelblog.com/wp-content/uploads/2017/12/tokyo-fuji.jpg?fit=800%2C530&ssl=1',
                    title: 'Tokyo',
                    rating: '9.5',
                  ),
                  cityWidget(
                    img:
                        'https://americanmind.org/wp-content/uploads/2023/03/GettyImages-1429150390.jpg',
                    title: 'New York',
                    rating: '4.5',
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => TestPage(name: 'Hossain',)),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
