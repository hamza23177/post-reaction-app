import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mafroshat extends StatefulWidget {
  @override
  _MafroshatState createState() => _MafroshatState();
}

class _MafroshatState extends State<Mafroshat>
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
        title: Text('المفروشات'),
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
                'مفروشات صعب',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'مفروشات صعب',
                  about: 'تصميم وتنجيد كافة أنواع المفروشات - تصميم أحدث الموديلات - حفر خشب - مجالس عربية - تصميم موديلات \n أرقام أخرى للتواصل: 0930025112 ',
                  phoneNumber: '0993608572',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%81%D8%B1%D9%88%D8%B4%D8%A7%D8%AA+%D8%B5%D8%B9%D8%A8%E2%80%AD/@33.5718719,36.4011599,21z/data=!4m6!3m5!1s0x1518efb6445e0f29:0x4d8e02e38dc21b54!8m2!3d33.5718007!4d36.4010704!16s%2Fg%2F11p5tllk_y?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الإتقان والجمال',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الإتقان والجمال',
                  about:
                  'لتنجيد المفروشات - أطقم اللف - مجالس العربية \n أرقام اخرى للتواصل: 0996944468 ',
                  phoneNumber: '0954040660',
                  location: 'https://www.google.com/maps/@33.5727778,36.4020941,21z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ستائر خضير',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'ستائر خضير',
                  about: 'جميع المفروشات المزلية - أقمشة - ستائر',
                  phoneNumber: '0944575138',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%AA%D8%A7%D8%A6%D8%B1+%D8%AE%D8%B6%D9%8A%D8%B1+%D9%88%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B9%D8%A7%D9%84%E2%80%AD/@33.5712687,36.402669,16.39z/data=!4m10!1m2!2m1!1z2YXZgdix2YjYtNin2Kog2K7YttmK2LE!3m6!1s0x1518ef4673be9679:0x97739460db80180!8m2!3d33.5724513!4d36.3985686!15sChfZhdmB2LHZiNi02KfYqiDYrti22YrYsVoZIhfZhdmB2LHZiNi02KfYqiDYrti22YrYsZIBDWN1cnRhaW5fc3RvcmXgAQA!16s%2Fg%2F11mncryl4w?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'نعيم أحميد',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'نعيم أحميد',
                  about: 'تنجيد - تركيب برادي - تفصيل مجالس عربي',
                  phoneNumber: '0931898131',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%81%D8%B1%D9%88%D8%B4%D8%A7%D8%AA+%D8%B5%D8%B9%D8%A8%E2%80%AD/@33.5718719,36.4011599,21z/data=!4m6!3m5!1s0x1518efb6445e0f29:0x4d8e02e38dc21b54!8m2!3d33.5718007!4d36.4010704!16s%2Fg%2F11p5tllk_y?authuser=0&entry=ttu',
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
