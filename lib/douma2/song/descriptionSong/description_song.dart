import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Salloons extends StatefulWidget {
  @override
  _SalloonsState createState() => _SalloonsState();
}

class _SalloonsState extends State<Salloons>
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
        title: Text('الصالات'),
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
                'قصر الشموع',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'قصر الشموع',
                  about:
                      'صالة أفراح ومناسبات \n أرقام أخرى للتواصل:0933105201 - 0947733310 ',
                  phoneNumber: '0115712749',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D8%A7%D9%84%D8%A9+%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D8%B4%D9%85%D9%88%D8%B9%E2%80%AD/@33.5709197,36.4165902,15z/data=!4m10!1m2!2m1!1z2LXYp9mE2KfYqg!3m6!1s0x1518ef47f8c1d2d9:0x6bde13a6798ceac!8m2!3d33.5677035!4d36.3924389!15sCgrYtdin2YTYp9iqkgENd2VkZGluZ192ZW51ZeABAA!16s%2Fg%2F11m__sgkbp?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قصر الخضراء',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'قصر الخضراء',
                  about:
                      'للأفراح والمناسبات \n ارقام أخرى: 0948587554 - 0967819095 ',
                  phoneNumber: '0996288375',
                  location:
                      'https://www.google.com/maps/place/%D8%B5%D8%A7%D9%84%D8%A9+%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D8%AE%D8%B6%D8%B1%D8%A7%D8%A1+%D9%84%D9%84%D9%85%D9%86%D8%A7%D8%B3%D8%A8%D8%A7%D8%AA%E2%80%AD/@33.5709197,36.4165902,15z/data=!4m10!1m2!2m1!1z2LXYp9mE2KfYqg!3m6!1s0x1518ef708c5f45ef:0x858147c2ec605d2b!8m2!3d33.5710645!4d36.4060069!15sCgrYtdin2YTYp9iqkgELZXZlbnRfdmVudWXgAQA!16s%2Fg%2F11sjyj1drr?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قصر ليالي العمر',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'قصر ليالي العمر',
                  about: 'للأفراح والمناسبات',
                  phoneNumber: '0969847971',
                  location: 'https://www.google.com/maps/@33.5724587,36.3951982,21z?entry=ttu',
                ),
              ),
              cards(
                'صالة الفيحاء الملكية',
                'في مسرابا',
                Icons.account_balance,
                UserPage(
                  username: 'صالة الفيحاء الملكية',
                  about: 'للأفراح والمناسبات',
                  phoneNumber: '0941660277',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8+%D8%A7%D9%84%D8%AE%D9%88%D9%84%D9%8A+%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%8A+%D8%A8%D8%A7%D8%AF%D8%A7%D8%B1%D9%87+%D8%A7%D8%A8%D9%88+%D8%A7%D9%84%D9%81%D9%88%D8%B2%E2%80%AD/@33.5515446,36.3947536,20.22z/data=!4m6!3m5!1s0x1518e5e9fdc9ded3:0xca6f62eb1cfe68d5!8m2!3d33.5516761!4d36.3947302!16s%2Fg%2F11sm74y5kg?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قصر الأمويين',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'قصر الأمويين',
                  about: 'للأفراح والمناسبات والتعازي',
                  phoneNumber: '0939000771',
                  location:
                      'https://www.google.com/maps/place/%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D8%A7%D9%85%D9%88%D9%8A%D9%8A%D9%86+%D9%84%D9%84%D9%85%D9%86%D8%A7%D8%B3%D8%A8%D8%A7%D8%AA%E2%80%AD/@33.5684435,36.3955998,17.08z/data=!4m6!3m5!1s0x1518ef4a886ec975:0xbeb1e30125141fa4!8m2!3d33.568607!4d36.3945856!16s%2Fg%2F11twj13vdr?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الأنوار الشرقية',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'صالة الأنوار الشرقية أبو عيشة',
                  about: 'للأفراح والمناسبات',
                  phoneNumber: '0968765849',
                  location:
                  'https://www.google.com/maps/@33.5703175,36.4073026,21z?entry=ttu',
                ),
              ),
              cards(
                'الشيخ بكري',
                'في دوما',
                Icons.account_balance,
                UserPage(
                  username: 'الشيخ بكري',
                  about: 'للأفراح والمناسبات \n ارقام أخرى: 0933235029 ',
                  phoneNumber: '0933499271',
                  location:
                      'https://www.google.com/maps/@33.5699576,36.3991145,19.44z?authuser=0&entry=ttu',
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

                    // fit: BoxFit.cover,
                    // width: _w / 2.36,
                    // height: _w / 2.6
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
