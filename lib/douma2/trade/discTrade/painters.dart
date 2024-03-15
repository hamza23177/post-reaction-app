import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Painters extends StatefulWidget {
  @override
  _PaintersState createState() => _PaintersState();
}

class _PaintersState extends State<Painters>
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
        title: Text('محلات الدهانات'),
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
                'خلبوص',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'خلبوص',
                  about: 'للدهانات',
                  phoneNumber: '0988942430',
                  location:
                      'https://www.google.com/maps/place/%D8%AE%D9%84%D8%A8%D9%88%D8%B5+%D9%84%D9%84%D8%AE%D8%B1%D8%AF%D9%88%D8%A7%D8%AA%E2%80%AD/@33.5687583,36.4047257,19.65z/data=!4m6!3m5!1s0x1518efd421bd7103:0x6cd159780ca61ab3!8m2!3d33.568914!4d36.4042386!16s%2Fg%2F11t2cmrpm0?entry=ttu',
                ),
              ),
              cards(
                'خيتي والطبجي',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'خيتي والطبجي',
                  about: 'للدهانات \n أرقام أخرى للتواصل: 0988954584 ',
                  phoneNumber: '0950087358',
                  location: 'https://www.google.com/maps/@33.5747977,36.4029772,21z?entry=ttu',
                ),
              ),
              cards(
                'سعدا',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو علي سعدا',
                  about:
                      'كافة لوازم الدهان والديكور \n أرقام أخرى للتواصل: 0991810015 - 0115713376 ',
                  phoneNumber: '0932000231',
                  location:
                      'https://www.google.com/maps/@33.5728872,36.3984251,21z?entry=ttu',
                ),
              ),
              cards(
                'دلوان',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو أحمد دلوان',
                  about: 'دهان  - جميع أنواع الدهانات',
                  phoneNumber: '0993700265',
                  location:
                      'https://www.google.com/maps/@33.5695282,36.3984243,19.96z?entry=ttu',
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
