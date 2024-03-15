import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Equiments extends StatefulWidget {
  @override
  _EquimentsState createState() => _EquimentsState();
}

class _EquimentsState extends State<Equiments>
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
        title: Text('الخردوات ولوازم البناء'),
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
                'خيتي والطبجي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'خيتي والطبجي',
                  about:
                      'خردوات - لوازم بناء مواد صحية - كهربائيات - دهانات \n أرقام أخرى للتواصل: 0988954584 ',
                  phoneNumber: '0950087358',
                  location:
                      'https://www.google.com/maps/@33.5747977,36.4029772,21z?entry=ttu',
                ),
              ),
              cards(
                'سعدا',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'سعدا',
                  about:
                      'لوازم الصناعة والبناء - مبيع جميع أنواع الصحية والخردوات \n أرقام أخرى للتواصل: 0991555146 ',
                  phoneNumber: '0997391719',
                  location: 'https://www.google.com/maps/@33.5728872,36.3984251,21z?entry=ttu',
                ),
              ),
              cards(
                'شرف للتجارة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'شرف للتجارة',
                  about: 'خردوات - عدد صناعية - براغي \n أرقام أخرى للتواصل: 0968277351 ',
                  phoneNumber: '0997318877',
                  location: 'https://www.google.com/maps/place/SHARAF_+%D8%B4%D8%B1%D9%81+%D9%84%D9%84%D8%AA%D8%AC%D8%A7%D8%B1%D8%A9%E2%80%AD/@33.5664786,36.4121705,20.36z/data=!4m10!1m2!2m1!1z2LTYsdmBINmE2YTYqtis2KfYsdip!3m6!1s0x1518efd0515772bf:0xfd83a9ef5526c76f!8m2!3d33.5664852!4d36.4119154!15sChXYtNix2YEg2YTZhNiq2KzYp9ix2KmSAR1pbmR1c3RyaWFsX2VxdWlwbWVudF9zdXBwbGllcuABAA!16s%2Fg%2F11hz1nl1mz?entry=ttu',
                ),
              ),
              cards(
                'أسامة شيخ النجار',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أسامة شيخ النجار',
                  about: 'خردوات - لوازم بناء - دهانات - كهرباء \n أرقام أخرى للتواصل: 0962770371 ',
                  phoneNumber: '0992981181',
                  location: 'https://www.google.com/maps/@33.5710819,36.4112469,21z?entry=ttu',
                ),
              ),
              cards(
                'النعمان للتجارة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'النعمان للتجارة',
                  about: 'أدوات صحية - أطقم الحمامات \n أرقام أخرى للتواصل: 0949347481 ',
                  phoneNumber: '0955483419',
                  location: 'https://www.google.com/maps/@33.5690966,36.4039245,21z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو أكرم سعدا',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو أكرم',
                  about: 'لوازم الصناعة والبناء \n أرقام أخرى للتواصل: 0997391719 ',
                  phoneNumber: '0991555146',
                  location: 'https://www.google.com/maps/@33.5728872,36.3984251,21z?entry=ttu',
                ),
              ),
              cards(
                'أبو محروس سعدا',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو محروس سعدا',
                  about:
                  'لوازم كهربائية منزلية - صناعية',
                  phoneNumber: '0945889099',
                  location: 'https://www.google.com/maps/@33.5728872,36.3984251,21z?entry=ttu',
                ),
              ),
              cards(
                'الحبوش',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو خليل الحبوش',
                  about: 'خردوات - لوازم بناء - مواد صحية',
                  phoneNumber: '0932480035',
                  location: 'https://www.google.com/maps/@33.5727322,36.401203,21z?entry=ttu',
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
