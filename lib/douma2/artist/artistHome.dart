import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'discArist/ataleh.dart';
import 'discArist/ballat.dart';
import 'discArist/builder.dart';
import 'discArist/cars.dart';
import 'discArist/dehan.dart';
import 'discArist/discArtist.dart';
import 'discArist/electricity.dart';
import 'discArist/gebs.dart';
import 'discArist/hadad.dart';
import 'discArist/khyats.dart';
import 'discArist/laham.dart';
import 'discArist/motor.dart';
import 'discArist/paton.dart';
import 'discArist/sehyah.dart';
import 'discArist/tayan.dart';
import 'discArist/wood.dart';

class ArtistHome extends StatefulWidget {
  @override
  _ArtistHomeState createState() => _ArtistHomeState();
}

class _ArtistHomeState extends State<ArtistHome>
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
        title: Text('الحرف المهنية'),
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
                'منجور الألمنيوم',
                'في دوما',
                'images/alminum.jpg',
                Alaminum(),
              ),
              cards(
                'الحدادة',
                'في دوما',
                'images/iron.jpg',
                Hadad(),
              ),
              cards(
                'محلات اللحم',
                'في دوما',
                'images/caw.jpg',
                Laham(),
              ),
              cards(
                'نجار أخشاب',
                'في دوما',
                'images/carpenter.jpg',
                Wood(),
              ),
              cards(
                'طيان',
                'في دوما',
                'images/tayan.jpg',
                Tayan(),
              ),
              cards(
                'معماري',
                'في دوما',
                'images/build.jpg',
                Builders(),
              ),
              cards(
                'نجار باطون',
                'في دوما',
                'images/paton.jpg',
                Paton(),
              ),
              cards(
                'بلاط',
                'في دوما',
                'images/paton.jpg',
                ballat(),
              ),
              cards(
                'تمديدات صحية',
                'في دوما',
                'images/shea.jpg',
                Seheah(),
              ),
              cards(
                'كهربجي',
                'في دوما',
                'images/elecrticity.jpg',
                Electricity(),
              ),
              cards(
                'دهان',
                'في دوما',
                'images/dahan.jpg',
                Dehan(),
              ),
              cards(
                'خياطين ومصابغ',
                'في دوما',
                'images/kyateeeen.jpg',
                Khyateen(),
              ),
              cards(
                'ديكور جبسم بورد',
                'في دوما',
                'images/gebsBord.jpg',
                Gebs(),
              ),
              cards(
                'تصليح سيارات',
                'في دوما',
                'images/cars.jpg',
                Cars(),
              ),
              cards(
                'تصليح دراجات كهربائية',
                'في دوما',
                'images/fixMotor.jpg',
                UserPagePhone(
                  username: 'أبو عبدو الصيداوي',
                  phoneNumber: '0966635516',
                  about: 'تصليح دراجات كهربائية وهوائية',
                ),
              ),
              cards(
                'تسليك المجاري',
                'في دوما',
                'images/majare.jpg',
                Motor(),
              ),
              cards(
                'ورشات عتالة',
                'في دوما',
                'images/ataleh.jpg',
                Ataleh(),
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
    String image1,
    Widget route1,
  ) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cards(title1, subtitle1, image1, route1),
        ],
      ),
    );
  }

  Widget cards(String title, String subtitle, String image, Widget route) {
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
                  child: Image.asset(image,
                      fit: BoxFit.cover, width: _w / 2.36, height: _w / 2.6),
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
