import 'package:untitled1/douma2/component/painer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPageCamera extends StatelessWidget {
  final String image;
  final String username;
  final String about;
  final String phone;
  final String location;

  UserPageCamera(
      {required this.username,
      required this.about,
      required this.phone,
      required this.location,
        required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF57752),
        
        elevation: 0,
        title: Text('صفحة المستخدم'),
        centerTitle: true,

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(height: 20),
            Text(
              username,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                about,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phone');
              },
              child: Text('اتصال'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                launch(location);
              },
              child: Text('الموقع على الخريطة'),
            ),


          ],

        ),

      ),


    );


  }

}