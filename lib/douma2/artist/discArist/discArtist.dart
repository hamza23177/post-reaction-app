import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alaminum extends StatefulWidget {
  @override
  _AlaminumState createState() => _AlaminumState();
}

class _AlaminumState extends State<Alaminum>
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
        title: Text('منجور الألمنيوم والمطابخ'),
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
                'الريس للمنجور والمطابخ',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الريس للمنجور والمطابخ',
                  about:
                      'تصميم مطابخ - أبواب - نوافذ - تصاليح - تركيب رفوف للمحلات \n أرقام أخرى: 0981281391  - 0968778736',
                  phoneNumber: '0957568007',
                  location: 'https://www.google.com/maps/@33.5699884,36.4058256,21z?entry=ttu',
                ),
              ),
              cards(
                'الراتب للمنجور والمطابخ',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الراتب للمنجور والمطابخ',
                  about:
                      'تصميم مطابخ - أبواب - نوافذ - تصاليح - تركيب رفوف للمحلات',
                  phoneNumber: '0993628780',
                  location: 'https://www.google.com/maps/place/HCC3%2B3RQ%D8%8C+%D8%AF%D9%88%D9%85%D8%A7%D8%8C+%D8%B3%D9%88%D8%B1%D9%8A%D8%A7%E2%80%AD/@33.5701011,36.4044247,21z/data=!4m6!3m5!1s0x1518efbd5016ef8b:0x37a5c8fcba553aa5!8m2!3d33.5700978!4d36.4045761!16s%2Fg%2F11l9_6_g5t?entry=ttu',
                ),
              ),
              cards(
                'العماد للمنجور',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'العماد للمنجور والمطابخ',
                  about:
                      'تصميم مطابخ - أبواب - نوافذ - تصاليح - تركيب رفوف للمحلات - تعهدات مزارع - بيوت - شقق سكنية ',
                  phoneNumber: '0933300154',
                  location: 'https://www.google.com/maps/place/%D8%A7%D8%A8%D9%88+%D8%B9%D9%85%D8%A7%D8%AF+%D8%AD%D9%88%D9%89+%D8%A7%D9%84%D9%85%D9%86%D9%8A%D9%88%D9%85+%D9%88%D9%85%D8%B7%D8%A7%D8%A8%D8%AE%E2%80%AD/@33.5707966,36.408678,19z/data=!4m6!3m5!1s0x1518efeb30268569:0xc1ebd46f38240847!8m2!3d33.5707959!4d36.4080271!16s%2Fg%2F11t7h38ssr?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الشغري للألمنيوم',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الشغري للألمنيوم',
                  about:
                  'تصميم مطابخ - أبواب - نوافذ - تصاليح - تركيب رفوف للمحلات',
                  phoneNumber: '0952820614',
                  location: 'https://www.google.com/maps/@33.5739685,36.404856,21z?entry=ttu',
                ),
              ),
              cards(
                'أبو يزن بدران',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبويزن بدران',
                  about:
                  'تصميم مطابخ - أبواب - نوافذ - تصاليح - تركيب رفوف للمحلات',
                  phoneNumber: '0964305739',
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
