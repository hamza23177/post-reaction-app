import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Laham extends StatefulWidget {
  @override
  _LahamState createState() => _LahamState();
}

class _LahamState extends State<Laham> with SingleTickerProviderStateMixin {
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
        title: Text('محلات اللحم'),
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
                'ملحمة الشام الجديدة',
                'لحم جمل',
                Icons.person,
                UserPage(
                  username: 'ملحمة الشام الجديدة',
                  about:
                  'لحم الجمل  - ني - مشوي',
                  phoneNumber: '0936044773',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%84%D8%AD%D9%85%D8%A9+%D8%A7%D9%84%D8%B4%D8%A7%D9%85%E2%80%AD/@33.5709575,36.4061061,20.48z/data=!4m5!3m4!1s0x1518ef2c84582581:0xb87cf707414e984!8m2!3d33.5710684!4d36.4057118?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الدرة',
                'لحم ضاني',
                Icons.person,
                UserPage(
                  username: 'الدرة',
                  about:
                  'لحم ضاني ',
                  phoneNumber: '0981568871',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%84%D8%AD%D9%85%D8%A9+%D8%A7%D8%A8%D9%88+%D8%B9%D8%AF%D9%86%D8%A7%D9%86+%D8%A7%D9%84%D8%AF%D8%B1%D8%A9%E2%80%AD/@33.5709812,36.407641,19z/data=!3m1!4b1!4m6!3m5!1s0x1518ef4845c4fd73:0x3d1371709f5ba0!8m2!3d33.5709812!4d36.4069973!16s%2Fg%2F11lh3wjxw4?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو العز',
                'لحم ضاني',
                Icons.person,
                UserPage(
                  username: 'ملحمة أبو العز',
                  about:
                  'لحم ضاني ',
                  phoneNumber: '0933601535',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%BA%D9%86%D9%85%E2%80%AD/@33.5690453,36.4015232,20.22z/data=!4m6!3m5!1s0x1518ef24b2f4d135:0x982f11540411ffef!8m2!3d33.5692164!4d36.4017988!16s%2Fg%2F11m9nvnvm7?authuser=0&entry=ttu',
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
