import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobiles extends StatefulWidget {
  @override
  _MobilesState createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> with SingleTickerProviderStateMixin {
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
        title: Text('محلات الموبايلات'),
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
                'الطوخي للاتصالات',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الطوخي للاتصالات',
                  about:
                  'بيع وشراء أجهزة جديدة ومستعملة - إكسسوارات - تحويل رصيد - تسديد كافة الفواتير وبوابات الإنترنيت \n أرقام أخرى للتواصل: 0991445007 ',
                  phoneNumber: '0115712287',
                  location:
                  'https://www.google.com/maps/@33.5669056,36.3962235,21z?entry=ttu',
                ),
              ),
              cards(
                'الملك للاتصالات',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الملك للاتصالات',
                  about:
                      'بيع وشراء أجهزة جديدة ومستعملة - تحويل رصيد  - تنزيل برامج - ألعاب - مسلسلات - صيانة احترافية \n أرقام أخرى للتواصل: 0988282928 ',
                  phoneNumber: '0115712087',
                  location:
                      'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D9%84%D9%83+%D9%84%D9%84%D8%A5%D8%AA%D8%B5%D8%A7%D9%84%D8%A7%D8%AA%E2%80%AD/@33.5684953,36.3965148,20.48z/data=!4m6!3m5!1s0x1518ef849ce7bd49:0x1800adc2a09ee4a9!8m2!3d33.5684835!4d36.396365!16s%2Fg%2F11tf9hg2nk?entry=ttu',
                ),
              ),
              cards(
                'مياسة للإتصالات',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'مياسة للإتصالات',
                  about:
                      'مبيع وشراءأجهزة - إكسسوارات - صيانة فورية - تحويل رصيد - تسديد فواتير فوري - تنزيل برامج ومسلسلات',
                  phoneNumber: '0996852969',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D9%8A%D8%A7%D8%B3%D8%A9+%D9%84%D9%84%D8%A5%D8%AA%D8%B5%D8%A7%D9%84%D8%A7%D8%AA%E2%80%AD/@33.5719332,36.4131823,17z/data=!3m1!4b1!4m6!3m5!1s0x1518efacad1403b7:0x454b6608b59f49a4!8m2!3d33.5719333!4d36.4083114!16s%2Fg%2F11rd9l89vx?entry=ttu',
                ),
              ),
              cards(
                'عمار للإتصالات',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'عمار للإتصالات',
                  about:
                      'مبيع وشراءأجهزة - إكسسوارات - صيانة فورية - تحويل رصيد',
                  phoneNumber: '0981337906',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8%D8%A9+%D8%A5%D8%B4%D8%A8%D9%8A%D9%84%D9%8A%D8%A7%E2%80%AD/@33.5685736,36.3983168,18.35z/data=!4m14!1m7!3m6!1s0x1518efb00f9886df:0xbbbd8620ae51e1e3!2z2YXZg9iq2KjYqSDYpdi02KjZitmE2YrYpw!8m2!3d33.5687754!4d36.3964954!16s%2Fg%2F11qg0w_8w5!3m5!1s0x1518efb00f9886df:0xbbbd8620ae51e1e3!8m2!3d33.5687754!4d36.3964954!16s%2Fg%2F11qg0w_8w5?entry=ttu',
                ),
              ),
              cards(
                'الدرة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الدرة',
                  about:
                      'مبيع وشراءأجهزة - إكسسوارات - صيانة فورية - تحويل رصيد - تسديد فواتير فوري - صيانة فورية',
                  phoneNumber: '0955751243',
                  location:
                      'https://www.google.com/maps/place/%D8%A7%D9%84%D8%AF%D8%B1%D8%A9+%D9%84%D9%84%D8%A3%D8%AA%D8%B5%D8%A7%D9%84%D8%A7%D8%AF%E2%80%AD/@33.567717,36.4011578,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef0bebf531f9:0xe6b670eefcdb0e5e!8m2!3d33.5677171!4d36.3962869!16s%2Fg%2F11jb09b1rf?entry=ttu',
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
