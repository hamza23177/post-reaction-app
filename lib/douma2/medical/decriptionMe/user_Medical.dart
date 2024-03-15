// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class UserProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('صفحة المستخدم')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage('images/bread.jpg'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'اسم المستخدم',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'بعض المعلومات المفصلة عن المستخدم',
//               style: TextStyle(fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () => _launchPhoneNumber('+1234567890'),
//               child: Text('تواصل مع المستخدم'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'موقع المستخدم:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'وصف بسيط عن موقع المستخدم',
//               style: TextStyle(fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () => _launchGoogleMaps(),
//               child: Text('تتبع موقع المستخدم'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _launchPhoneNumber(String phoneNumber) async {
//     final url = 'tel:$phoneNumber';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'لا يمكن فتح تطبيق الهاتف';
//     }
//   }
//
//   void _launchGoogleMaps() async {
//     final url = 'https://www.google.com/maps';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'لا يمكن فتح Google Maps';
//     }
//   }
// }
