import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/siteImporantUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalDamascus extends StatefulWidget {
  @override
  _HospitalDamascusState createState() => _HospitalDamascusState();
}

class _HospitalDamascusState extends State<HospitalDamascus>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -30)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF57752),
        
        elevation: 0,
        title: Text('المشافي'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 13),
              cards(
                'مشفى المجتهد',
                'في دمشق',
                'images/hospitl2.jpg',
                UserPageCamera(
                  username: 'مشفى المجتهد',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%AF%D9%85%D8%B4%D9%82+(%D8%A7%D9%84%D9%85%D8%AC%D8%AA%D9%87%D8%AF)%E2%80%AD/@33.5000712,36.2979805,17z/data=!3m1!4b1!4m6!3m5!1s0x1518e0cfe2eefe5f:0xaeabafbe466431b3!8m2!3d33.5000712!4d36.2954056!16s%2Fg%2F11g6b0fbvs?authuser=0&entry=ttu',
                  phone: '0112216000',
                  image: 'images/hospitl2.jpg',
                ),
              ), // 0115897501
              cards(
                'مستشفى الفيحاء',
                'في دمشق',
                'images/hospitl3.jpg',
                UserPageCamera(
                  username: 'مستشفى الفيحاء',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%81%D9%8A%D8%AD%D8%A7%D8%A1%E2%80%AD/@33.4903715,36.3028451,17z/data=!4m6!3m5!1s0x1518e0ddce70e061:0x86a2c124fccc7f6a!8m2!3d33.4903733!4d36.3002447!16s%2Fg%2F1hm2hp2_1?authuser=0&entry=ttu',
                  phone: '0118819593',
                  image: 'images/hospitl3.jpg',
                ),
              ),
              cards(
                'مشفى المهايني',
                'في دمشق',
                'images/hospitl4.jpg',
                UserPageCamera(
                  username: 'مشفى المهايني',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%85%D9%87%D8%A7%D9%8A%D9%86%D9%8A%E2%80%AD/@33.4886608,36.3049557,15z/data=!4m10!1m2!2m1!1z2KfZhNmF2LTYp9mB2Yog2YHZiiDYr9mF2LTZgg!3m6!1s0x1518e0e88241ba71:0x34ee1f602ee9a8cc!8m2!3d33.4888156!4d36.294419!15sChzYp9mE2YXYtNin2YHZiiDZgdmKINiv2YXYtNmCkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F1v6gbh3l?authuser=0&entry=ttu',
                  phone: '0118833443',
                  image: 'images/hospitl4.jpg',
                ),
              ),
              cards(
                'مشفى الرشيد',
                'في دمشق',
                'images/hospitl5.jpg',
                UserPageCamera(
                  username: 'مشفى الرشيد',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%B1%D8%B4%D9%8A%D8%AF%E2%80%AD/@33.4999674,36.3213017,15z/data=!4m10!1m2!2m1!1z2KfZhNmF2LTYp9mB2Yog2YHZiiDYr9mF2LTZgg!3m6!1s0x1518e0d6de7c2329:0x562b4ae660d30236!8m2!3d33.4999674!4d36.3022473!15sChzYp9mE2YXYtNin2YHZiiDZgdmKINiv2YXYtNmCkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F1thn7rp5?authuser=0&entry=ttu',
                  phone: '0936552655',
                  image: 'images/hospitl5.jpg',
                ),
              ),
              cards(
                'مشفى الحياة',
                'في دمشق',
                'images/hospitl6.jpg',
                UserSiteCamera(
                  username: 'مشفى الحياة',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%AD%D9%8A%D8%A7%D8%A9%E2%80%AD/@33.5240451,36.3202808,15z/data=!4m10!1m2!2m1!1z2KfZhNmF2LTYp9mB2Yog2YHZiiDYr9mF2LTZgg!3m6!1s0x1518e7217c341049:0xe2f2778032526d5d!8m2!3d33.5240451!4d36.3012264!15sChzYp9mE2YXYtNin2YHZiiDZgdmKINiv2YXYtNmCkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F11bzt0rr05?authuser=0&entry=ttu',
                  image: 'images/hospitl6.jpg',
                ),
              ),
              cards(
                'مستشفى الاسد الجامعي',
                'في دمشق',
                'images/hospitl7.jpg',
                UserPageCamera(
                  username: 'مستشفى الاسد الجامعي',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%A7%D8%B3%D8%AF+%D8%A7%D9%84%D8%AC%D8%A7%D9%85%D8%B9%D9%8A.%E2%80%AD/@33.5054312,36.2887485,15z/data=!4m10!1m2!2m1!1z2KfZhNmF2LTYp9mB2Yog2YHZiiDYr9mF2LTZgg!3m6!1s0x1518e0a4341be6db:0x8bf2c1a4e652746f!8m2!3d33.5054312!4d36.2696941!15sChzYp9mE2YXYtNin2YHZiiDZgdmKINiv2YXYtNmCkgEIaG9zcGl0YWzgAQA!16s%2Fm%2F0gj8c81?authuser=0&entry=ttu',
                  phone: '0112126500',
                  image: 'images/hospitl7.jpg',
                ),
              ),
              cards(
                'المواساة الجامعي',
                'في دمشق',
                'images/hospitl8.jpg',
                UserPageCamera(
                  username: 'مستشفى المواساة الجامعي',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%85%D9%88%D8%A7%D8%B3%D8%A7%D8%A9+%D8%A7%D9%84%D8%AC%D8%A7%D9%85%D8%B9%D9%8A.%E2%80%AD/@33.5054312,36.2887485,15z/data=!4m10!1m2!2m1!1z2KfZhNmF2LTYp9mB2Yog2YHZiiDYr9mF2LTZgg!3m6!1s0x1518e0a829dde97b:0xf25321ff15b6835e!8m2!3d33.5121084!4d36.2633502!15sChzYp9mE2YXYtNin2YHZiiDZgdmKINiv2YXYtNmCkgETZ292ZXJubWVudF9ob3NwaXRhbOABAA!16s%2Fm%2F012hsn66?authuser=0&entry=ttu',
                  phone: '0112133000',
                  image: 'images/hospitl8.jpg',
                ),
              ),
            ],
          ),
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }

  Widget groupOfCards(
      String title1,
      String subtitle1,
      String image1,
      Widget route1,
      ) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cards(title1, subtitle1, image1, route1),
        ],
      ),
    );
  }

  Widget cards(String title, String subtitle, String image, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: InkWell(
          enableFeedback: true,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => route,
                ));
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
            padding: EdgeInsets.all(_w / 30),
            height: _w / 4.4,
            width: _w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffEDECEA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.withOpacity(.1),
                  radius: _w / 15,
                  child: Image.asset(image,
                      fit: BoxFit.cover, width: _w / 2.36, height: _w / 2.6),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: _w / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.8),
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.navigate_next_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
