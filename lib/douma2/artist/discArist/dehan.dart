import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dehan extends StatefulWidget {
  @override
  _DehanState createState() => _DehanState();
}

class _DehanState extends State<Dehan> with SingleTickerProviderStateMixin {
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
        title: Text('دهان'),
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
                'الصباغ',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زياد الصباغ',
                  about:
                  'دهان منازل',
                  phoneNumber: '0969737041',
                ),
              ),
              cards(
                'الساعور',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عبدو الساعور',
                  about:
                  'دهان منازل',
                  phoneNumber: '0951814708',
                ),
              ),
              cards(
                'قاقيش',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو ماهر قاقيش',
                  about:
                  'دهان منازل',
                  phoneNumber: '0992758143',
                ),
              ),
              cards(
                'أبو هشام',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو هشام',
                  about:
                  'دهان منازل',
                  phoneNumber: '0933887434',
                ),
              ),
              cards(
                'أبو العز البعلي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو العز البعلي',
                  about:
                  'دهان منازل - عزل حجر - بخ خشب \n أرقام أخرى للتواصل: 0940451059 ',
                  phoneNumber: '0950087380',
                ),
              ),
              cards(
                'مغيطة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد مغيطة',
                  about:
                  'دهان منازل',
                  phoneNumber: '0944774353',
                ),
              ),
              cards(
                'العربيني',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عبدو العربيني',
                  about:
                  'دهان منازل',
                  phoneNumber: '0931850382',
                ),
              ),
              cards(
                'غازي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عدنان غازي',
                  about:
                  'دهان موبيليا',
                  phoneNumber: '0935736662',
                ),
              ),
              cards(
                'أبو الجود',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو الجود',
                  about:
                  'دهان منازل - ديكورات - بخ كافة الانواع الخشبية - ترخسم',
                  phoneNumber: '0940420253',
                ),
              ),
              cards(
                'سويدان',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو نزار سويدان',
                  about:
                  'دهان منازل',
                  phoneNumber: '0944704270',
                ),
              ),
              cards(
                'كريم',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'عمار كريم',
                  about:
                  'دهان منازل',
                  phoneNumber: '0988689499',
                ),
              ),
              cards(
                'أبو صالح عدرا',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو صالح عدرا',
                  about:
                  'دهان منازل',
                  phoneNumber: '0995111036',
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
