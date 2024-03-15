import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Khyateen extends StatefulWidget {
  @override
  _KhyateenState createState() => _KhyateenState();
}

class _KhyateenState extends State<Khyateen>
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
        title: Text('خياطين ومصابغ'),
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
                'أبو عمار أمين',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو عمار أمين',
                  about:
                  'خياطة وتصليح ألبسة - خياط نسائي - سبورات ',
                  phoneNumber: '0992521304',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D8%B3%D9%88%D9%82+%D8%A7%D9%84%D8%AA%D8%AC%D8%A7%D8%B1%D9%8A%E2%80%AD/@33.5729375,36.4009412,20.74z/data=!4m6!3m5!1s0x1518ef0b62eb7cc3:0xb083ae1eb56cfe06!8m2!3d33.5731107!4d36.4009723!16s%2Fg%2F11rtdb4w5p?entry=ttu',
                ),
              ),
              cards(
                'مصبغة حجازي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'مصبغة حجازي',
                  about:
                  'غسيل وكوي سجاد موكيت حرامات ستائر - صباغة كافة الألبسة \n أرقام أخرى للتواصل: 0955324933',
                  phoneNumber: '0993563116',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B5%D8%A8%D8%BA%D8%A9+%D8%AD%D8%AC%D8%A7%D8%B2%D9%8A%E2%80%AD/@33.5742802,36.4012556,19.7z/data=!4m6!3m5!1s0x1518ef18b040e7f5:0x1dbbfc989e5fab42!8m2!3d33.5741562!4d36.4012035!16s%2Fg%2F11rqjhvv2l?entry=ttu',
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
