import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/locationUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeolDoumaHome extends StatefulWidget {
  @override
  _FeolDoumaHomeState createState() => _FeolDoumaHomeState();
}

class _FeolDoumaHomeState extends State<FeolDoumaHome> with SingleTickerProviderStateMixin {
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
        title: Text('الكازيات والمحروقات'),
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
                'خدمة عبيلي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'خدمة عبيلي',
                  about:
                  ' يمكنك الحصول على وقود سيارتك حتى في المناطق التي لا تتوفر فيها محطات الوقود. إذا كنت مقطوعًا من البنزين في مكان بعيد، اتصل بنا على الرقم وسيصل إليك صاحب البنزين في أسرع وقت ممكن. \n أرقام أخرى للتواصل: 0930087468 ',
                  phoneNumber: '0982799112',
                ),
              ),
              cards(
                'كازية الساعور',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'كازية الساعور',
                  about:
                  'بنزين',
                  location: 'https://www.google.com/maps/place/%D9%83%D8%A7%D8%B2%D9%8A%D8%A9+%D8%A7%D9%84%D8%B3%D8%A7%D8%B9%D9%88%D8%B1%E2%80%AD/@33.5670269,36.4074941,17z/data=!4m14!1m7!3m6!1s0x1518ef6f44ef5437:0x908628dc325c61bc!2z2YPYp9iy2YrYqSDYp9mE2LPYp9i52YjYsQ!8m2!3d33.5670269!4d36.4049192!16s%2Fg%2F11jypgtbyj!3m5!1s0x1518ef6f44ef5437:0x908628dc325c61bc!8m2!3d33.5670269!4d36.4049192!16s%2Fg%2F11jypgtbyj?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'كازية اّدم',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'كازية اّدم',
                  about:
                  'بنزين',
                  location: 'https://www.google.com/maps/place/%D9%83%D8%A7%D8%B2%D9%8A%D8%A9+%D8%A7%D8%AF%D9%85%E2%80%AD/@33.571029,36.4150269,17z/data=!4m14!1m7!3m6!1s0x1518efdf42f75bc1:0x2c6f738b618c510b!2z2YPYp9iy2YrYqSDYp9iv2YU!8m2!3d33.571029!4d36.412452!16s%2Fg%2F11jt8rcq0h!3m5!1s0x1518efdf42f75bc1:0x2c6f738b618c510b!8m2!3d33.571029!4d36.412452!16s%2Fg%2F11jt8rcq0h?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'كازية عز الدين',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'كازية عز الدين',
                  about:
                  'بنزين',
                  location: 'https://www.google.com/maps/place/%D9%83%D8%A7%D8%B2%D9%8A%D8%A9+%D8%B9%D8%B2+%D8%A7%D9%84%D8%AF%D9%8A%D9%86%E2%80%AD/@33.5697557,36.4210698,17z/data=!4m14!1m7!3m6!1s0x1518ef13845c8bdd:0x70855400300cbc7f!2z2YPYp9iy2YrYqSDYudiyINin2YTYr9mK2YY!8m2!3d33.5697557!4d36.4184949!16s%2Fg%2F11s4wzx600!3m5!1s0x1518ef13845c8bdd:0x70855400300cbc7f!8m2!3d33.5697557!4d36.4184949!16s%2Fg%2F11s4wzx600?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'كازية عبد النافع',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'كازية عبد النافع',
                  about:
                  'بنزين',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%AD%D8%B7%D8%A9+%D9%85%D8%AD%D8%B1%D9%88%D9%82%D8%A7%D8%AA+%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%86%D8%A7%D9%81%D8%B9%E2%80%AD/@33.5791616,36.4282983,18.04z/data=!4m14!1m7!3m6!1s0x1518efbf25be9d27:0xd907a13254c58f03!2z2YXYrdi32Kkg2LnYqNivINin2YTZhtin2YHYuQ!8m2!3d33.5710072!4d36.412526!16s%2Fg%2F11cs0rgzrz!3m5!1s0x1518efd315d5a6ab:0xdf8aa1913ad19663!8m2!3d33.579171!4d36.428002!16s%2Fg%2F11hz2jy3jk?authuser=0&entry=ttu',
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
