import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Photers extends StatefulWidget {
  @override
  _PhotersState createState() => _PhotersState();
}

class _PhotersState extends State<Photers> with SingleTickerProviderStateMixin {
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
        title: Text('المصورين'),
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
                'تصوير القدس',
                'في دوما',
                Icons.camera_alt,
                UserPage(
                  username: 'تصوير القدس',
                  about: 'تصوير كافة المناسبات',
                  phoneNumber: '0933577082',
                  location: 'https://www.google.com/maps/place/%D8%AA%D8%B5%D9%88%D9%8A%D8%B1+%D8%A7%D9%84%D9%82%D8%AF%D8%B3%E2%80%AD/@33.5709946,36.4001697,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef72d93d7a19:0x4ebbeb24c97af3ee!8m2!3d33.5709946!4d36.3975948!16s%2Fg%2F11qpkmrkp6?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'استديو أكشن',
                'في دوما',
                Icons.camera_alt,
                UserPage(
                  username: 'استديو أكشن',
                  about: 'تصوير كافة المناسبات',
                  phoneNumber: '0934911635',
                  location: 'https://www.google.com/maps/place/%D9%82%D9%88%D8%AA%D9%84%D9%8A%E2%80%AD/@33.5703069,36.3966984,21z/data=!4m10!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmC2YjYqtmE2Yo!3m6!1s0x1518ef3c7cb0e3e5:0x5d36db4703defd08!8m2!3d33.5653821!4d36.3960658!15sChfYr9mI2YXYpyDYp9mE2YLZiNiq2YTZipIBGG1vYmlsZV9waG9uZV9yZXBhaXJfc2hvcOABAA!16s%2Fg%2F11rvltczfz?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'تصوير الصيداوي',
                'في دوما',
                Icons.camera_alt,
                UserPage(
                  username: 'تصوير الصيداوي',
                  about: 'تصوير مناسبات - حفلات - أفراح',
                  phoneNumber: '0935240131',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%8A%D9%85%D8%A7%D9%86%E2%80%AD/@33.5709751,36.40634,20.17z/data=!4m6!3m5!1s0x1518efbd055790af:0xdb8478973185ff82!8m2!3d33.5708809!4d36.4060188!16s%2Fg%2F11cs1w2f5_?entry=ttu',
                ),
              ),
              cards(
                'تصوير عبد الهادي',
                'في دوما',
                Icons.camera_alt,
                UserPage(
                  username: 'تصوير عبد الهادي',
                  about:
                  'مناسبات - جلسات - منتجات',
                  phoneNumber: '0969281814',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AC%D8%AF+%D8%AD%D8%B3%D9%8A%D8%A8%D8%A9+%D8%A7%D9%84%D8%AF%D9%88%D9%85%D8%A7%D9%86%D9%8A%E2%80%AD/@33.5719084,36.4027892,21z/data=!4m5!3m4!1s0x1518efa2c2eded2f:0x5ca951dbbd320354!8m2!3d33.5718986!4d36.4027951?entry=ttu',
                ),
              ),
              cards(
                'استديو الصمادي',
                'في دوما',
                Icons.camera_alt,
                UserPage(
                  username: 'استديو الصمادي',
                  about:
                      'مناسبات - جلسات - منتجات \n أرقام أخرى للتواصل: 0959049150 ',
                  phoneNumber: '0937658640',
                  location: 'https://www.google.com/maps/@33.5685867,36.4067636,21z?authuser=0&entry=ttu',
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
