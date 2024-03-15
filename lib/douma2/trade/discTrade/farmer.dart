import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Farmer extends StatefulWidget {
  @override
  _FarmerState createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> with SingleTickerProviderStateMixin {
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
        title: Text('اللوازم الزراعية'),
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
                'مركز الخالد',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'مركز الخالد',
                  about:
                      'اكسسوار زراعي - شبكات ري بالتنقيط - أنابيب زراعية \n أرقام تواصل أخرى: 0968868817 ',
                  phoneNumber: '0995347238',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%AE%D9%8A%D8%B1+%D8%A7%D9%84%D8%B2%D8%B1%D8%A7%D8%B9%D9%8A+%D9%85%D8%AD%D9%85%D8%AF+%D8%AE%D9%8A%D8%B1+%D8%B3%D8%B1%D9%8A%D9%88%D9%84%E2%80%AD/@33.567399,36.4094917,21z/data=!4m6!3m5!1s0x1518efead7f273b7:0x970ec2007734656d!8m2!3d33.5674864!4d36.4092079!16s%2Fg%2F11q3y1v0z0?entry=ttu',
                ),
              ),
              cards(
                'محل البويضاني',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'وليد عمر بويضاني',
                  about:
                      'معدات زراعية وصناعية - مضخات مياه غاطسة - سنترفيش كهربائية وشمسية مباشر \n أرقام أخرى للتواصل: 0115711424 ',
                  phoneNumber: '0993382350',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%BA%D9%86%D9%85%E2%80%AD/@33.5690226,36.4021682,19.28z/data=!4m6!3m5!1s0x1518ef24b2f4d135:0x982f11540411ffef!8m2!3d33.5692164!4d36.4017988!16s%2Fg%2F11m9nvnvm7?entry=ttu',
                ),
              ),
              cards(
                'عماد محمد البرغوث',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'عماد محمد البرغوث',
                  about:
                      'للتجهيزات الزراعية والصناعية - كافة أنواع الفحم الصناعي - الموانع الصناعية - مغاسل سيارات - عدد صناعية',
                  phoneNumber: '0932789263',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%BA%D9%86%D9%85%E2%80%AD/@33.5690226,36.4021682,19.28z/data=!4m6!3m5!1s0x1518ef24b2f4d135:0x982f11540411ffef!8m2!3d33.5692164!4d36.4017988!16s%2Fg%2F11m9nvnvm7?entry=ttu',
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
