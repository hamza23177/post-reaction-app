import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordDamas extends StatefulWidget {
  @override
  _PasswordDamasState createState() => _PasswordDamasState();
}

class _PasswordDamasState extends State<PasswordDamas>
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
        title: Text('سفريات وشركات الطيران'),
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
                'حجز جوازات سفر',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'حجز جوازات سفر',
                  about:
                  'عادي - فوري ',
                  phoneNumber: '0951255464',
                ),
              ),
              cards(
                'شركة الطيران السورية',
                'في دمشق',
                Icons.person,
                UserPage(
                  username: 'شركة الطيران السورية',
                  about:
                  '',
                  phoneNumber: '0112219859',
                  location: 'https://www.google.com/maps/place/%D8%B4%D8%B1%D9%83%D8%A9+%D8%A7%D9%84%D8%B7%D9%8A%D8%B1%D8%A7%D9%86+%D8%A7%D9%84%D8%B3%D9%88%D8%B1%D9%8A%D8%A9%E2%80%AD/@33.5127655,36.3350936,14z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mG!3m6!1s0x1518e72dea013849:0x54bbc9a78408d83f!8m2!3d33.5127655!4d36.2969848!15sCh7Yr9mF2LTZgiDYtNix2YPYp9iqINi32YrYsdin2YZaICIe2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mGkgENdHJhdmVsX2FnZW5jeZoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSemJWbHRlVzkzUlJBQuABAA!16s%2Fg%2F11g9s_q16n?entry=ttu',
                ),
              ),
              cards(
                'الخطوط الجوية السورية',
                'في دمشق',
                Icons.person,
                UserPage(
                  username: 'الخطوط الجوية السورية',
                  about:
                  '',
                  phoneNumber: '0112450098',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D8%AE%D8%B7%D9%88%D8%B7+%D8%A7%D9%84%D8%AC%D9%88%D9%8A%D8%A9+%D8%A7%D9%84%D8%B3%D9%88%D8%B1%D9%8A%D8%A9%E2%80%AD/@33.5127655,36.3350936,14z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mG!3m6!1s0x1518e72d8ea39ec3:0x135a7682974a5dbb!8m2!3d33.5119343!4d36.2953374!15sCh7Yr9mF2LTZgiDYtNix2YPYp9iqINi32YrYsdin2YZaICIe2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mGkgEHYWlybGluZZoBJENoZERTVWhOTUc5blMwVkpRMEZuU1VOdGVtWnBSbXhuUlJBQuABAA!16s%2Fg%2F1tgw_cx0?entry=ttu',
                ),
              ),
              cards(
                'عروة للسياحة والسفر',
                'في دمشق',
                Icons.person,
                UserPage(
                  username: 'مكتب عروة للسياحة والسفر',
                  about:
                  '',
                  phoneNumber: '0112220067',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8+%D8%B9%D8%B1%D9%88%D8%A9+%D9%84%D9%84%D8%B3%D9%8A%D8%A7%D8%AD%D8%A9+%D9%88%D8%A7%D9%84%D8%B3%D9%81%D8%B1%E2%80%AD/@33.5127655,36.3350936,14z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mG!3m6!1s0x1518e72c29ca3563:0x851faa589a9ccd0a!8m2!3d33.5129993!4d36.2988208!15sCh7Yr9mF2LTZgiDYtNix2YPYp9iqINi32YrYsdin2YaSARVhaXJsaW5lX3RpY2tldF9hZ2VuY3ngAQA!16s%2Fg%2F11f0l32pcm?entry=ttu',
                ),
              ),
              cards(
                'أجنحة الشام للطيران',
                'في دمشق',
                Icons.person,
                UserPage(
                  username: 'أجنحة الشام للطيران',
                  about:
                  '',
                  phoneNumber: '0116643331',
                  location: 'https://www.google.com/maps/place/%D8%A3%D8%AC%D9%86%D8%AD%D8%A9+%D8%A7%D9%84%D8%B4%D8%A7%D9%85+%D9%84%D9%84%D8%B7%D9%8A%D8%B1%D8%A7%D9%86%E2%80%AD/@33.5026519,36.2953563,14z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2LTYsdmD2KfYqiDYt9mK2LHYp9mG!3m6!1s0x1518df0a5cffcf13:0x5df37b55d075fb4c!8m2!3d33.5026519!4d36.2572475!15sCh7Yr9mF2LTZgiDYtNix2YPYp9iqINi32YrYsdin2YaSAQdhaXJsaW5l4AEA!16s%2Fg%2F11p9n_27wv?entry=ttu',
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
