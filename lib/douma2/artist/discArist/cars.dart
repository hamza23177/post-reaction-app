import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cars extends StatefulWidget {
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> with SingleTickerProviderStateMixin {
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
        title: Text('تصليح سيارات'),
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
                'أبو أنس التوت',
                'ميكانيكي بنزين',
                Icons.person,
                UserPage(
                  username: 'أبو أنس التوت',
                  about:
                      'تصليح سيارات ميكانيكي بنزين - ورشة متنقلة خارجية \n أرقام أخرى للتواصل: 0981297324 ',
                  phoneNumber: '0981559162',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AC%D8%AF+%D8%AE%D8%A7%D9%84%D8%AF+%D8%A8%D9%86+%D8%A7%D9%84%D9%88%D9%84%D9%8A%D8%AF+(+%D9%82%D8%A7%D9%82%D9%8A%D8%B4+)%E2%80%AD/@33.564075,36.4010281,19.96z/data=!4m5!3m4!1s0x1518ef92b12d6e53:0x522ea7b4502a70db!8m2!3d33.5642256!4d36.4009076?entry=ttu',
                ),
              ),
              cards(
                'نعمان',
                'ميكانيكي بنزين',
                Icons.person,
                UserPagePhone(
                  username: 'أبو صطيف نعمان',
                  about: 'تصليح سيارات ميكانيكي بنزين',
                  phoneNumber: '0991400876',
                ),
              ),
              cards(
                'المنسي',
                'دوزان',
                Icons.person,
                UserPage(
                  username: 'المنسي',
                  about: 'تصليح سيارات دوزان',
                  phoneNumber: '0955525464',
                  location:
                      'https://www.google.com/maps/place/%D8%A3%D8%A8%D9%88+%D8%AE%D8%A7%D9%84%D8%AF+%D8%A7%D9%84%D9%85%D9%86%D8%B3%D9%8A+%D9%84%D8%AF%D9%88%D8%B2%D8%A7%D9%86+%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA%E2%80%AD/@33.5700116,36.4136863,17z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518ef1dd66f93ff:0xfd2f031af96196c4!8m2!3d33.5698596!4d36.4102639!16s%2Fg%2F11sfs5jkxm?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ورشة بوبس',
                'ميكانيك بنزين روسي',
                Icons.person,
                UserPage(
                  username: 'أبو بشير بوبس',
                  about: 'مختصين بالسيارات الروسية فقط - تصليح - بيع قطع - معتمد لشركة صقال وأولاده - ورشة خارجية \n أرقام أخرى للتواصل: 0991441483 ',
                  phoneNumber: '0996871258',
                  location:
                  'https://www.google.com/maps/place/%D8%A3%D8%A8%D9%88+%D8%AE%D8%A7%D9%84%D8%AF+%D8%A7%D9%84%D9%85%D9%86%D8%B3%D9%8A+%D9%84%D8%AF%D9%88%D8%B2%D8%A7%D9%86+%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA%E2%80%AD/@33.5700116,36.4136863,17z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518ef1dd66f93ff:0xfd2f031af96196c4!8m2!3d33.5698596!4d36.4102639!16s%2Fg%2F11sfs5jkxm?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شيخ سليمان',
                'حدادة سيارات',
                Icons.person,
                UserPagePhone(
                  username: 'أبوعبيد شيخ سليمان',
                  about: 'تصليح سيارات  - صواج - حدادة سيارات',
                  phoneNumber: '0947126434',
                ),
              ),
              cards(
                'الطبجي',
                'حدادة سيارات',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمود الطبجي',
                  about: 'تصليح سيارات  - صواج - حدادة سيارات',
                  phoneNumber: '0949539917',
                ),
              ),
              cards(
                'طعمة',
                'سيارات ديزل',
                Icons.person,
                UserPagePhone(
                  username: 'أبو منير طعمة',
                  about:
                      'تصليح سيارات ديزل ومازوت - دوزان - ميكانيك - كهرباء - وتقديم الخدمة للناس المقطوعين في الطريق',
                  phoneNumber: '0968574606',
                ),
              ),
              cards(
                'رسلان',
                'سيارات كهرباء',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد رسلان',
                  about:
                      'تصليح - سيارات - كهربائي - وتقديم الخدمة للناس المقطوعين في الطريق',
                  phoneNumber: '0968574606',
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
