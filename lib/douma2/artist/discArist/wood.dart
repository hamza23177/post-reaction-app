import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wood extends StatefulWidget {
  @override
  _WoodState createState() => _WoodState();
}

class _WoodState extends State<Wood> with SingleTickerProviderStateMixin {
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
        title: Text('نجار أخشاب'),
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
                'الفارس للنجارة العربية',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'الفارس للنجارة العربية',
                  about: 'الفارس للنجارة العربية والديكورات - نجارة بجميعها - مفروشات - غرف نوم - أطقم لف زاوية \n أرقام أخرى للتواصل: 0947603271 ',
                  phoneNumber: '0932001561',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%81%D8%A7%D8%B1%D8%B3+%D9%84%D9%84%D9%86%D8%AC%D8%A7%D8%B1%D8%A9+%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9+%D9%88%D8%A7%D9%84%D8%AF%D9%8A%D9%83%D9%88%D8%B1%D8%A7%D8%AA%E2%80%AD/@33.5688789,36.3988114,17z/data=!4m14!1m7!3m6!1s0x1518ef61ca04c0d5:0x188210ac8e946e00!2z2KfZhNmB2KfYsdizINmE2YTZhtis2KfYsdipINin2YTYudix2KjZitipINmI2KfZhNiv2YrZg9mI2LHYp9iq!8m2!3d33.5688789!4d36.3988114!16s%2Fg%2F11q9d7c0lc!3m5!1s0x1518ef61ca04c0d5:0x188210ac8e946e00!8m2!3d33.5688789!4d36.3988114!16s%2Fg%2F11q9d7c0lc?entry=ttu',
                ),
              ),
              cards(
                'أبو راتب بللة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو راتب بللة',
                  about: 'نجار أخشاب',
                  phoneNumber: '0932242413',
                  location: 'https://www.google.com/maps/@33.5656851,36.3902793,21z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو محمد غبورة',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو محمد غبورة',
                  about: 'نجار أخشاب',
                  phoneNumber: '0968210016',
                  location: 'https://www.google.com/maps/@33.5783577,36.4029176,21z?entry=ttu',
                ),
              ),
              cards(
                'أبو فارس سريول',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو فارس سريول',
                  about: 'نجار عربي بكافة اشكالها',
                  phoneNumber: '0993401181',
                  location: 'https://www.google.com/maps/@33.5783577,36.4029176,21z?entry=ttu',
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
