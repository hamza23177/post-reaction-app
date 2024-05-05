// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:untitled1/component/painter.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../constant.dart';
// import 'login.dart';
//
// class ContactMePage extends StatelessWidget {
//   final String image;
//   final String username;
//   final String work;
//   final String about;
//   final String phone;
//   final String phone2;
//   final String phone3;
//   final String location;
//
//   ContactMePage(
//       {required this.username,
//         required this.about,
//         required this.work,
//         required this.phone,
//         required this.phone2,
//         required this.phone3,
//         required this.location,
//         required this.image});
//   // يمكنك إضافة روابط لمواقع التواصل الاجتماعي هنا
//
//   void _showFullImage(BuildContext context, String imageUrl) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           backgroundColor: Colors.transparent,
//           insetPadding: EdgeInsets.all(10),
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(imageUrl),
//                 fit: BoxFit.contain,
//               ),
//             ),
//             child: InkWell(
//               onTap: () => Navigator.pop(context),
//               child: Container(
//                 alignment: Alignment.topRight,
//                 padding: EdgeInsets.all(10),
//                 child: Icon(
//                   Icons.close,
//                   color: Colors.white,
//                   size: 25,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xffF57752),
//           elevation: 0,
//           title: Text('تواصل معنا'),
//           centerTitle: true,
//           systemOverlayStyle: SystemUiOverlayStyle.light,
//         ),
//         body: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Center(
//                       child: GestureDetector(
//                         onTap: () => _showFullImage(context, image),
//                         child: CircleAvatar(
//                           radius: 100,
//                           backgroundImage: AssetImage(image),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       username,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         work,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         about,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Divider(
//                       thickness: 2.0,
//                     ),
//                     Text(
//                       'للتواصل',
//                       style: TextStyle(
//                           fontSize: 24.0, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       'موبايل 1',
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.bold),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.mobile_friendly),
//                       title: Text(phone),
//                       onTap: () => _launchURL('tel:$phone'),
//                     ),
//                     Text(
//                       'موبايل 2',
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.bold),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.mobile_friendly),
//                       title: Text(phone2),
//                       onTap: () => _launchURL('tel:$phone2'),
//                     ),
//                     Text(
//                       'موبايل 3',
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.bold),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.mobile_friendly),
//                       title: Text(phone3),
//                       onTap: () => _launchURL('tel:$phone3'),
//                     ),
//                     Text(
//                       'الموقع',
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.bold),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.location_on),
//                       title: Text(location),
//                       onTap: () => _launchURL('geo:0,0?q=$location'),
//                     ),
//                     Divider(
//                       thickness: 2.0,
//                     ),
//                     SizedBox(height: 20,),
//                     kLoginRegisterHint('لديك حساب مسبقا ', 'سجل دخول', (){
//                       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false);
//                     })
//                     // يمكن إضافة المزيد من العناصر هنا مثل مواقع التواصل الاجتماعي
//                     // إضافة الخريطة هنا باستخدام Google Maps Flutter plugin إذا لزم الأمر
//                   ],
//                 ),
//               ),
//             ),
//             CustomPaint(
//               painter: MyPainter(),
//               child: Container(height: 0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

import '../constant.dart';
import 'login.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late Future<Map<String, dynamic>> _contactData;

  @override
  void initState() {
    super.initState();
    _contactData = _fetchContactData();
  }

  Future<Map<String, dynamic>> _fetchContactData() async {
    final response = await http.get(Uri.parse(contactMe));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load contact data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF57752),
          elevation: 0,
          title: Text('تواصل معنا'),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: FutureBuilder<Map<String, dynamic>>(
          future: _contactData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('غير متصل بالإنترنيت ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final data = snapshot.data!;
              return Stack(
                children: [
                  ListView(
                    children: [
                      Image.asset('assets/doumaProfile.jpg'), // صورة الشركة
                      ListTile(
                        title: Text(
                          data['company_name'] ?? 'اسم الشركة',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(data['about_us'] ?? 'نبذة عن الشركة'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('الهاتف الرئيسي'),
                        subtitle: Text(data['phone_numbers']['primary'] ?? ''),
                        onTap: () => _launchURL(
                            'tel:${data['phone_numbers']['primary']}'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('الهاتف الثانوي'),
                        subtitle:
                            Text(data['phone_numbers']['secondary'] ?? ''),
                        onTap: () => _launchURL(
                            'tel:${data['phone_numbers']['secondary']}'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('الهاتف الثالث'),
                        subtitle: Text(data['phone_numbers']['tertiary'] ?? ''),
                        onTap: () => _launchURL(
                            'tel:${data['phone_numbers']['tertiary']}'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('العنوان'),
                        subtitle: Text(data['address'] ?? ''),
                        onTap: () => _launchURL('geo:0,0?q=${data['address']}'),
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      kLoginRegisterHint('لديك حساب مسبقا ', 'سجل دخول', () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => Login()),
                            (route) => false);
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      // يمكنك إضافة المزيد من العناصر هنا
                    ],
                  ),
                ],
              );
            } else {
              return Center(child: Text('لا توجد بيانات'));
            }
          },
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
