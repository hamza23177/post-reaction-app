import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Songer extends StatefulWidget {
  @override
  _SongerState createState() => _SongerState();
}

class _SongerState extends State<Songer> with SingleTickerProviderStateMixin {
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
        title: Text('الفرق الإنشادية والعراضات'),
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
                'فرقة اّل البيت',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'فرقة اّل البيت',
                  about: 'فرقة انشادية للعرائس والمناسبات',
                  phoneNumber: '0937364395',
                ),
              ),
              cards(
                'فرقة سيف العز',
                'عراضة شامية',
                Icons.person,
                UserPagePhone(
                  username: 'فرقة سيف العز',
                  about: 'عراضات شامية',
                  phoneNumber: '0932427336',
                ),
              ),
              cards(
                'فرقة فرسان الصالحية',
                'عراضة شامية',
                Icons.person,
                UserPagePhone(
                  username: 'فرقة فرسان الصالحية',
                  about: 'عراضات شامية',
                  phoneNumber: '0932987312',
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
