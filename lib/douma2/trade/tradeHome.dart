import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'discTrade/disc_trade.dart';
import 'discTrade/farmer.dart';
import 'discTrade/farmerPhyrmacy.dart';
import 'discTrade/mafroshat.dart';
import 'discTrade/mobile.dart';
import 'discTrade/painters.dart';
import 'discTrade/solar.dart';

class TradeHome extends StatefulWidget {
  @override
  _TradeHomeState createState() => _TradeHomeState();
}

class _TradeHomeState extends State<TradeHome>
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
        title: Text('المحلات التجارية'),
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
                'الخردوات ولوازم البناء',
                'في دوما',
                'images/equimentes.jpg',
                Equiments(),
              ),
              cards(
                'الطاقة الشمسية',
                'في دوما',
                'images/solar.jpg',
                Solar(),
              ),
              cards(
                'الدهانات',
                'في دوما',
                'images/painters.jpg',
                Painters(),
              ),
              cards(
                'الموبايلات',
                'في دوما',
                'images/mobile.jpg',
                Mobiles(),
              ),
              cards(
                'التقني للمولدات',
                'في دوما',
                'images/teqane.jpg',
                UserPageCamera(
                  username: 'التقني للمولدات',
                  about: 'صيانة وقطع تبديل مولدات الكهربائية الديزل \n أرقام أخرى للتواصل: 0965547566',
                  phone: '0933327388',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D8%AA%D9%82%D9%86%D9%8A+%D9%84%D8%B5%D9%8A%D8%A7%D9%86%D8%A9+%D9%85%D9%88%D9%84%D8%AF%D8%A7%D8%AA+%D8%A7%D9%84%D9%83%D9%87%D8%B1%D8%A8%D8%A7%D8%A1+%D8%A7%D9%84%D8%AF%D9%8A%D8%B2%D9%84%E2%80%AD/@33.5664401,36.4153325,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef77372b1057:0xc9c7e2c95f241bc4!8m2!3d33.5664401!4d36.4127576!16s%2Fg%2F11p_61y7gg?entry=ttu',
                  image: 'images/teqane.jpg',
                ),
              ),
              cards(
                'المركز الهندسي للوزن',
                'في دوما',
                'images/mezan.jpg',
                UserPageCamera(
                  username: 'المركز الهندسي للوزن',
                  about: 'صيانة وبيع جميع أنواع الموازين والقبانات الالكترونية - موازين سوبر ماركت - موازين شخصية - موازين مطبخ - موازين دهب - تفصيل قبانات للمعامل وقطاعات الحديد \n أرقام أخرى للتواصل: 0947864730 ',
                  phone: '0936683362',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D9%87%D9%86%D8%AF%D8%B3%D9%8A+%D9%84%D9%84%D9%88%D8%B2%D9%86%E2%80%AD/@33.5691505,36.4031643,18.55z/data=!4m6!3m5!1s0x1518ef2e3afa3457:0x5e30987fef6f63c!8m2!3d33.5690531!4d36.4032559!16s%2Fg%2F11fpjrfb9n?entry=ttu',
                  image: 'images/mezan.jpg',
                ),
              ),
              cards(
                'قطاعة الريس',
                'في دوما',
                'images/rayees.jpg',
                UserPageCamera(
                  username: 'قطاعةالريس',
                  about: 'مبيع جميع أنواع الحديد الصناعي \n أرقام أخرى للتواصل: 0938210389 ',
                  phone: '0998730366',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AC%D8%AF+%D8%B9%D9%84%D9%8A+%D8%A8%D9%86+%D8%A3%D8%A8%D9%8A+%D8%B7%D8%A7%D9%84%D8%A8+(+%D8%A7%D9%84%D9%83%D8%AD%D9%84%D9%88%D8%B3+)%E2%80%AD/@33.5649828,36.3988364,20.48z/data=!4m5!3m4!1s0x1518efce338779f1:0x9b4c341c499b3e4d!8m2!3d33.5650999!4d36.3992095?entry=ttu',
                  image: 'images/rayees.jpg',
                ),
              ),
              cards(
                'لوازم زراعية',
                'في دوما',
                'images/farmer.jpg',
                Farmer(),
              ),
              cards(
                'المفروشات',
                'في دوما',
                'images/mafroshat.jpg',
                Mafroshat(),
              ),
              cards(
                'صيدليات زراعية',
                'في دوما',
                'images/farmeraPhy.jpg',
                FarmerPhyermacy(),
              ),
              cards(
                'معرض حمادة',
                'دراجات نارية',
                'images/hamadeh.jpg',
                UserPageCamera(
                  username: 'معرض حمادة',
                  about: 'جملة ومفرق كافة أنواع الدراجات النارية \n أرقام أخرى للتواصل: 0933662932 ',
                  phone: '0945461103',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B9%D8%B1%D8%B6+%D8%AD%D9%85%D8%A7%D8%AF%D8%A9+%D9%84%D9%84%D8%AA%D8%AC%D8%A7%D8%B1%D8%A9%E2%80%AD/@33.5656537,36.4008249,18.6z/data=!4m5!3m4!1s0x1518ef21722f95cd:0x1dc1ce0dea06a89e!8m2!3d33.5653716!4d36.4002582?entry=ttu',
                  image: 'images/hamadeh.jpg',
                ),
              ),
              cards(
                'بهاء بدران',
                'أعلاف وحبوب',
                'images/hobob.jpg',
                UserPageCamera(
                  username: 'بهاء بدران',
                  about: 'محل أعلاف وحبوب \n أرقام أخرى للتواصل: 0992820058 ',
                  phone: '0957469402',
                  location: 'https://www.google.com/maps/@33.5689795,36.4066034,21z?entry=ttu',
                  image: 'images/hobob.jpg',
                ),
              ),
              cards(
                'سنتر الهديل',
                'في دوما',
                'images/hadeel.jpg',
                UserPageCamera(
                  username: 'سنتر الهديل',
                  about: 'كل ما تحتاجه العروس - قسم الولادي والمحير - قسم تأجير بدلات عرايس - قسم العطورات والهدايا - قسم تأجير فساتين - قسم خاص خياطة فساتين - قسم الجينزات - قسم سبورات - قسم لانجري ',
                  phone: '0992513456',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D9%82+%D8%A7%D9%84%D8%AF%D8%B1%D8%A9%E2%80%AD/@33.571322,36.3990588,19.02z/data=!4m6!3m5!1s0x1518ef781a1fe625:0xd4bb26564c46dedf!8m2!3d33.5716631!4d36.3987853!16s%2Fg%2F11ry8r0ggs?authuser=0&entry=ttu',
                  image: 'images/hadeel.jpg',
                ),
              ),
              cards(
                'مكتبة راما',
                'في دوما',
                'images/ramo.jpg',
                UserPageCamera(
                  username: 'مكتبة راما',
                  about: 'قرطاسية - خدمات طلابية - عطورات - هدايا - مكياجات \n أرقام أخرى للتواصل: 0115712811 - 0993827657 ',
                  phone: '0944717713',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8%D8%A9+%D8%B1%D8%A7%D9%85%D8%A7%E2%80%AD/@33.5676968,36.3962016,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipODAaaKdP_ONJJWYtwJMvAfb3ReYPFOJYMRP0UT!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipODAaaKdP_ONJJWYtwJMvAfb3ReYPFOJYMRP0UT%3Dw114-h86-k-no!7i4128!8i3096!4m7!3m6!1s0x1518ef5dab6db767:0x5009997e80e3d052!8m2!3d33.5676901!4d36.3962919!10e5!16s%2Fg%2F11sh1nm7dv?entry=ttu',
                  image: 'images/ramo.jpg',
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
