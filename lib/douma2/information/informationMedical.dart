import 'package:untitled1/douma2/component/painer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPagePhoneImportant extends StatelessWidget {
  final String username;
  final String about;
  final String phoneNumber;
  final String phoneNumber1;
  final String phoneNumber2;
  final String phoneNumber3;
  final String phoneNumber4;
  final String phoneNumber5;
  final String phoneNumber6;


  UserPagePhoneImportant(
      {required this.username,
        required this.about,
        required this.phoneNumber,
        required this.phoneNumber1,
        required this.phoneNumber2,
        required this.phoneNumber3,
        required this.phoneNumber4,
        required this.phoneNumber5,
        required this.phoneNumber6,


      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF57752),
        
        elevation: 0,
        title: Text('الأرقام الهامة'),
        centerTitle: true,

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person , color: Colors.cyan,size: 100,),
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
                launch('tel:$phoneNumber');
              },
              child: Text('الهلال الأحمر مركز الإسعاف'),
            ),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber1');
              },
              child: Text('الهلال الأحمر مركز الإسعاف'),
            ),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber2');
              },
              child: Text('مركز إسعاف الهلال الأحمر بريف دمشق المجاني'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber3');
              },
              child: Text('مشفى دوما الإسعافي'),
            ),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber4');
              },
              child: Text('مشفى دوما الإسعافي'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber5');
              },
              child: Text('مركز الحلبي للتصوير الشعاعي'),
            ),
            ElevatedButton(
              onPressed: () {
                launch('tel:$phoneNumber6');
              },
              child: Text('مركز الحلبي للتصوير الشعاعي'),
            ),
            SizedBox(height: 20),



          ],

        ),

      ),


    );


  }

}
