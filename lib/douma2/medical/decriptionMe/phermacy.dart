import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/locationUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_Medical.dart';

class Phyrmace extends StatefulWidget {
  @override
  _PhyrmaceState createState() => _PhyrmaceState();
}

class _PhyrmaceState extends State<Phyrmace>
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
        title: Text('الصيدليات'),
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
                'منيرة خبية',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'منيرة خبية',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D9%85%D9%86%D9%8A%D8%B1%D8%A9+%D8%AE%D8%A8%D9%8A%D8%A9%E2%80%AD/@33.5686571,36.3971689,19z/data=!4m9!1m2!2m1!1z2KfZhNmH2YTYp9mEINin2YTYo9it2YXYsSDYqNin2YTZgtix2Kgg2YXZhiDYr9mI2YXYp9iMINiz2YjYsdmK2Kc!3m5!1s0x1518ef98cb18820b:0x474f53ba3bb05031!8m2!3d33.5686539!4d36.396426!16s%2Fg%2F11qpzrxljx?authuser=0&entry=ttu',
                  phoneNumber: '0115712615',
                ),
              ),
              cards(
                'الرازي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الرازي',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D8%A7%D9%84%D8%B1%D8%A7%D8%B2%D9%8A%E2%80%AD/@33.565226,36.4007952,16z/data=!4m10!1m2!2m1!1z2LXZitiv2YTZitin2Ko!3m6!1s0x1518ef9f02e1e079:0x8a1fb81928e0c87f!8m2!3d33.5700477!4d36.3963494!15sCg7YtdmK2K_ZhNmK2KfYqpIBCHBoYXJtYWN54AEA!16s%2Fg%2F11f040lps4?authuser=0&entry=ttu',
                  phoneNumber: '0988400195',
                ),
              ),
              cards(
                'القاضي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'القاضي',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D8%B6%D9%8A%E2%80%AD/@33.5710991,36.4089308,16z/data=!4m10!1m2!2m1!1z2LXZitiv2YTZitin2Ko!3m6!1s0x1518ef1579175b0d:0x8e4738ec0accace2!8m2!3d33.5710991!4d36.3994036!15sCg7YtdmK2K_ZhNmK2KfYqpIBCHBoYXJtYWN54AEA!16s%2Fg%2F11jnqz5xtm?authuser=0&entry=ttu',
                  phoneNumber: '0931476868',
                ),
              ),
              cards(
                'صبحي هارون',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'صبحي هارون',
                  about:
                      'جميع الأدوية الطبية - مستحضرات التجميل \n أرقام أخرى للتواصل: 0999105649 ',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D8%B5%D8%A8%D8%AD%D9%8A+%D9%87%D8%A7%D8%B1%D9%88%D9%86%E2%80%AD/@33.5729354,36.4189843,16z/data=!4m10!1m2!2m1!1z2LXZitiv2YTZitin2Ko!3m6!1s0x1518ef1a0a927635:0x8335f5699b75201a!8m2!3d33.5729354!4d36.4094571!15sCg7YtdmK2K_ZhNmK2KfYqpIBCHBoYXJtYWN54AEA!16s%2Fg%2F11hz11vgbm?authuser=0&entry=ttu',
                  phoneNumber: '0944238750',
                ),
              ),
              cards(
                'الوصال',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الوصال',
                  about:
                      'جميع الأدوية الطبية - مستحضرات التجميل - خدمة على مدار الساعة',
                  location: '',
                  phoneNumber: '0997845144',
                ),
              ),
              cards(
                'زينة الشيخ عرابي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'زينة الشيخ عرابي',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location: '',
                  phoneNumber: '0962460606',
                ),
              ),
              cards(
                'وليد القاضي',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'صيدلية وليد القاضي',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D9%88%D9%84%D9%8A%D8%AF+%D8%A7%D9%84%D9%82%D8%A7%D8%B6%D9%8A%E2%80%AD/@33.571099,36.408938,16z/data=!4m10!1m2!2m1!1z2LXZitiv2YTZitin2Ko!3m6!1s0x1518efbd33e0ac1b:0x3265a303eb1e89a0!8m2!3d33.571099!4d36.3994108!15sCg7YtdmK2K_ZhNmK2KfYqpIBCHBoYXJtYWN54AEA!16s%2Fg%2F11jcdfv12l?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'بيان الحصوة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'بيان الحصوة',
                  about: 'جميع الأدوية الطبية - مستحضرات التجميل',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AC%D8%AF+%D8%AE%D8%A7%D9%84%D8%AF+%D8%A8%D9%86+%D8%A7%D9%84%D9%88%D9%84%D9%8A%D8%AF+(+%D9%82%D8%A7%D9%82%D9%8A%D8%B4+)%E2%80%AD/@33.5643685,36.4012171,19.97z/data=!4m6!3m5!1s0x1518ef92b12d6e53:0x522ea7b4502a70db!8m2!3d33.5642257!4d36.4009078!16s%2Fg%2F11jcbgx3ps?authuser=0&entry=ttu',
                  phoneNumber: '0962174379',
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

                    // fit: BoxFit.cover,
                    // width: _w / 2.36,
                    // height: _w / 2.6
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
