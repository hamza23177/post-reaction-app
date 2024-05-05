import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';

class ContactUsPage extends StatelessWidget {
  final String image;
  final String username;
  final String work;
  final String about;
  final String phone;
  final String location;

  ContactUsPage(
      {required this.username,
      required this.about,
      required this.work,
      required this.phone,
      required this.location,
      required this.image});
  // يمكنك إضافة روابط لمواقع التواصل الاجتماعي هنا

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF57752),
          elevation: 0,
          title: Text('تواصل معي'),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: GestureDetector(
                        onTap: () => showFullImage(context, image),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(image),
                        ),
                      ),
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
                        work,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
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
                    SizedBox(height: 10),
                    Divider(
                      thickness: 2.0,
                    ),
                    Text(
                      'توصل معي',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'موبايل',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      leading: Icon(Icons.mobile_friendly),
                      title: Text(phone),
                      onTap: () => _launchURL('tel:$phone'),
                    ),
                    Text(
                      'واتساب',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.green[800]),
                      title: Text('تواصل عبر الواتساب'),
                      onTap: () => _launchWhatsApp(phone), // استخدم الرقم بالتنسيق الدولي
                    ),
                    Text(
                      'الموقع',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text(location),
                      onTap: () => _launchURL('geo:0,0?q=$location'),
                    ),

                    // يمكن إضافة المزيد من العناصر هنا مثل مواقع التواصل الاجتماعي
                    // إضافة الخريطة هنا باستخدام Google Maps Flutter plugin إذا لزم الأمر
                  ],
                ),
              ),
            ),
            CustomPaint(
              painter: MyPainter(),
              child: Container(height: 0),
            ),
          ],
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
  void _launchWhatsApp(String phone) async {
    // إزالة الصفر الأول إذا كان موجودًا وإضافة رمز البلد
    String phoneNumber = phone.startsWith('0') ? '+963${phone.substring(1)}' : '+963$phone';

    final whatsappUrl = "https://wa.me/$phoneNumber";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}
