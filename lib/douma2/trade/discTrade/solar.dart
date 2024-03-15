import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Solar extends StatefulWidget {
  @override
  _SolarState createState() => _SolarState();
}

class _SolarState extends State<Solar> with SingleTickerProviderStateMixin {
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
        title: Text('الطاقة الشمسية'),
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
                'المركزي للكابلات',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'المركزي للكابلات',
                  about:
                      'بطاريات - طاقة شمسية - انفيرترات - حلول متطورة - إنارة \n أرقام أخرى للتواصل: 0933484010 ',
                  phoneNumber: '0966450404',
                  location:
                      'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%BA%D9%86%D9%85%E2%80%AD/@33.5690216,36.4017693,20.48z/data=!4m6!3m5!1s0x1518ef24b2f4d135:0x982f11540411ffef!8m2!3d33.5692164!4d36.4017988!16s%2Fg%2F11m9nvnvm7?entry=ttu',
                ),
              ),
              cards(
                'المورد',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'المورد',
                  about:
                      'للكهرباء الصناعية والمنزلية والطاقة البديلة \n أرقام أخرى للتواصل: 0115711168 ',
                  phoneNumber: '0964849620',
                  location:
                      'https://www.google.com/maps/@33.5693267,36.401301,21z?entry=ttu',
                ),
              ),
              cards(
                'عالم الطاقة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'عالم الطاقة',
                  about:
                      'بيع وتركيب منظومات شمسية - ألواح شمسية - انفرتر - بطاريات',
                  phoneNumber: '0966272700',
                  location:
                      'https://www.google.com/maps/place/%D8%B9%D8%A7%D9%84%D9%85+%D8%A7%D9%84%D8%B7%D8%A7%D9%82%D8%A9%E2%80%AD/@33.5692559,36.3997529,20.22z/data=!4m6!3m5!1s0x1518ef155e86480b:0x1e95d631ef524241!8m2!3d33.5693886!4d36.3993727!16s%2Fg%2F11rqgk5m7p?entry=ttu',
                ),
              ),
              cards(
                'رجب للطاقة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'رجب للطاقة البديلة',
                  about:
                      'بيع وتركيب منظومات شمسية - ألواح شمسية - انفرتر - بطاريات \n أرقام أخرى للتواصل: 0953935817 - 0933452630 ',
                  phoneNumber: '0115712245',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D8%A7%D9%84%D8%B1%D8%A7%D8%B2%D9%8A%E2%80%AD/@33.5699208,36.3965665,20.51z/data=!4m15!1m8!3m7!1s0x1518ef84a8e817bb:0xaffd77b97246862b!2z2K_ZiNmF2KfYjCDYs9mI2LHZitin!3b1!8m2!3d33.5727724!4d36.4093761!16s%2Fm%2F02qgf3r!3m5!1s0x1518ef9f02e1e079:0x8a1fb81928e0c87f!8m2!3d33.5700477!4d36.3963494!16s%2Fg%2F11f040lps4?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو محمود سريول',
                'في دوما',
                Icons.person,
                UserPageCamera(
                  username: 'أبو محمود سريول',
                  about:
                      'لأنظمة الطاقة الشمسية المتجددة - فلاتر المياه المنزليةوالصناعية \n أرقام أخرى للتواصل: 0115712778 - 0968523940 ',
                  location:
                      'https://www.google.com/maps/@33.5722786,36.3966402,21z?entry=ttu',
                  image: 'images/SolarSrewel.jpg',
                  phone: '0936535797',
                ),
              ),
            ],
          ),

          // top me rahna
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
    IconData icon1,
    Widget route1,
  ) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cards(title1, subtitle1, icon1, route1),
        ],
      ),
    );
  }

  Widget cards(String title, String subtitle, IconData icon, Widget route) {
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
                  child: Icon(
                    icon,
                    color: Colors.cyan,
                    size: _w / 10.0,
                  ),
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
