import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../information/locationUser.dart';

class TouristDamascus extends StatefulWidget {
  @override
  _TouristDamascusState createState() => _TouristDamascusState();
}

class _TouristDamascusState extends State<TouristDamascus>
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
        title: Text('الأماكن السياحية'),
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
                'قصر العظم',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'قصر العظم',
                  about:
                      'يضمّ هذا القصر المذهل الذي يعود إلى القرن 18 متحف الفنون والتقاليد الشعبية ',
                  location: 'https://www.google.com/maps/place/%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D8%B9%D8%B8%D9%85%E2%80%AD/@33.5102637,36.3259373,15z/data=!4m11!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m7!1s0x1518e6d5fd6d92b7:0x65727c59b1d42367!8m2!3d33.5102637!4d36.3068829!10e1!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgEUbG9jYWxfaGlzdG9yeV9tdXNldW2aASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUm9kMHhIV2w5UlJSQULgAQA!16s%2Fm%2F02pwrtp?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'خان أسعد باشا العظم',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'خان أسعد باشا العظم',
                  about:
                  'حمّام شعبي بُني في القرن الـ12 ويتميّز بالتصميم المعماري المتقن والزجاج المُلوّن',
                  location: 'https://www.google.com/maps/place/%D8%AE%D8%A7%D9%86+%D8%A3%D8%B3%D8%B9%D8%AF+%D8%A8%D8%A7%D8%B4%D8%A7+%D8%A7%D9%84%D8%B9%D8%B8%D9%85%E2%80%AD/@33.5102637,36.3259373,15z/data=!4m11!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m7!1s0x1518e6d5f4e6c22f:0xdd22394d0ba33768!8m2!3d33.5092573!4d36.3067135!10e1!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgEXaGlzdG9yaWNhbF9wbGFjZV9tdXNldW2aASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTlNhSFIyTTBoQkVBReABAA!16s%2Fm%2F05f8676?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قلعة دمشق',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'قلعة دمشق',
                  about:
                  ' ',
                  location: 'https://www.google.com/maps/place/%D9%82%D9%84%D8%B9%D8%A9+%D8%AF%D9%85%D8%B4%D9%82%E2%80%AD/@33.5102637,36.3259373,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e72c09191929:0x820da89ec03983dc!8m2!3d33.5115338!4d36.3011526!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgETaGlzdG9yaWNhbF9sYW5kbWFya5oBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VSU09WbEhjVkZCRUFF4AEA!16s%2Fm%2F02q8ldy?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'باب شرقي',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'باب شرقي',
                  about:
                  'يضمّ هذا القصر المذهل الذي يعود إلى القرن 18 متحف الفنون والتقاليد الشعبية ',
                  location: 'https://www.google.com/maps/place/%D8%A8%D8%A7%D8%A8+%D8%B4%D8%B1%D9%82%D9%8A%E2%80%AD/@33.5102637,36.3259373,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e6cfd1bd150f:0x7d97c2449aedd11d!8m2!3d33.509444!4d36.3178555!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgESdG91cmlzdF9hdHRyYWN0aW9umgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU5DZEhKMVVrVjNFQUXgAQA!16s%2Fm%2F03ybp26?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'سوق الحميدية',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'سوق الحميدية',
                  about:
                  'تأسّس هذا السوق الصاخب والعريق في القرن الـ 19 ويشمل أكشاكًا لبيع المأكولات المحلية والحِرف اليدوية. ',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D9%82+%D8%A7%D9%84%D8%AD%D9%85%D9%8A%D8%AF%D9%8A%D8%A9%E2%80%AD/@33.5102637,36.3259373,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e72bdaee61a5:0x8a6f00d5cdaaeeaf!8m2!3d33.5112179!4d36.303696!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgEIc2hvcHBpbmeaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTTJORjl4Y0ZSbkVBReABAA!16zL20vMGcyM2Y0?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ساحة الأمويين',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'ساحة الأمويين',
                  about:
                  '',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%A3%D9%85%D9%88%D9%8A%D9%8A%D9%86%E2%80%AD/@33.5138062,36.2955805,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e0b2fd166793:0x1e5a4e39ab5956f3!8m2!3d33.5138062!4d36.2765261!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgETaGlzdG9yaWNhbF9sYW5kbWFya5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSUGVVOVFSWEJCUlJBQuABAA!16s%2Fm%2F05c4_kn?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'حديقة السبكي',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'حديقة السبكي',
                  about:
                  '',
                  location: 'https://www.google.com/maps/place/%D8%AD%D8%AF%D9%8A%D9%82%D8%A9+%D8%A7%D9%84%D8%B3%D8%A8%D9%83%D9%8A%E2%80%AD/@33.5138062,36.2955805,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e7371b99333b:0xa5b08ff9776cf675!8m2!3d33.519051!4d36.2884654!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgEEcGFya5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSd2RuUTNaakZCUlJBQuABAA!16s%2Fg%2F1213_049?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'المتحف الوطني ',
                'في دمشق',
                Icons.person,
                LocationUser(
                  username: 'المتحف الوطني بدمشق',
                  about:
                  '',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%AA%D8%AD%D9%81+%D8%A7%D9%84%D9%88%D8%B7%D9%86%D9%8A+%D8%A8%D8%AF%D9%85%D8%B4%D9%82%E2%80%AD/@33.512757,36.3089344,15z/data=!4m10!1m2!2m1!1z2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdip!3m6!1s0x1518e7349e5445ff:0x6d9025b1d8d46405!8m2!3d33.512757!4d36.28988!15sCh7Yr9mF2LTZgiDYo9mF2KfZg9mGINiz2YrYp9it2KlaICIe2K_Zhdi02YIg2KPZhdin2YPZhiDYs9mK2KfYrdipkgEGbXVzZXVtmgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU5YTm04eWFVNUJFQUXgAQA!16s%2Fm%2F027fk97?authuser=0&entry=ttu',
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
