import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
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
        title: Text('صالونات الحلاقة'),
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
                'صالون عمار',
                'رجالي',
                'images/ammar.jpg',
                UserPageCamera(
                  username: 'صالون عمار',
                  about:
                      'استمتع بتجربة حلاقة رجالية مثالية في صالون حلاقة عمار - فخرنا أن نقدم خدمات حلاقة عالية الجودة واحترافية تلبي جميع احتياجاتك - خدمة الحلاقة في المنزل للحالات الاضطرارية',
                  location: 'https://www.google.com/maps/@33.5675034,36.4038037,19.91z?authuser=0&entry=ttu',
                  phone: '0982041823',
                  image: 'images/ammar.jpg',
                ),
              ), // 0115897501
              cards(
                'صالون العادل',
                'رجالي',
                'images/adel.jpg',
                UserPageCamera(
                  username: 'صالون العادل',
                  about:
                      'ستحظى بقصة شعر مصممة خصيصا تلائم أسلوبك ومظهرك نحن نستخدم أحدث التقنيات وأفضل المنتجاتلضمان تجربة تحصل فيها على الحلاقة والتصفيف الذي تستحقه - يوجد حلاقة في المنزل للحالات الاضطرارية',
                  location: 'https://www.google.com/maps/@33.5730717,36.4118947,21z?entry=ttu',
                  phone: '0945396983',
                  image: 'images/adel.jpg',
                ),
              ),
              cards(
                'صالون الوردة البيضاء',
                'رجالي',
                'images/salloon.jpg',
                UserPageCamera(
                  username: 'صالون أبو البراء',
                  about:
                      'صالوننا مكان مريح ومناسب لكل الرجال الذين يرغبون في العناية بمظهرهم',
                  location: 'https://www.google.com/maps/place/%D8%AF%D9%84%D9%88%D8%A7%D9%86+%D9%84%D8%B5%D9%8A%D8%A7%D9%86%D8%A9+%D8%A7%D9%84%D8%BA%D8%B3%D8%A7%D9%84%D8%A7%D8%AA+%D9%88%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D8%AF%D8%A7%D8%AA%E2%80%AD/@33.5684989,36.400121,18z/data=!4m6!3m5!1s0x1518ef895c5144c7:0xc49eaceb89fb6dc4!8m2!3d33.5688073!4d36.3987481!16s%2Fg%2F11kq1nz8xf?authuser=0&entry=ttu',
                  phone: '0936410697',
                  image: 'images/salloon.jpg',
                ),
              ),
              cards(
                'صالون عبد النافع',
                'رجالي',
                'images/salloon.jpg',
                UserPageCamera(
                  username: 'صالون عبد النافع',
                  about:
                      'نقدم خدمة متميزة تشمل قص الشعر - حلاقة اللحية - التصفيف - حلاقة للأطفال - حلاقة في المنزل للحالات الاضطرارية',
                  location: 'https://www.google.com/maps/@33.5642301,36.4004,18z?authuser=0&entry=ttu',
                  phone: '0954921644',
                  image: 'images/salloon.jpg',
                ),
              ),
              cards(
                'صالون إيف',
                'نسائي',
                'images/sallon3.jpg',
                UserPageCamera(
                  username: 'صالون إيف',
                  about:
                      'قص - ميش - ميك أب - ميش - صبغة تكنيك ألوان - شينون - ميني كور - تنظيف بشرة \n أرقام أخرى للتواصل: 0993186029 ',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%AB%D9%82%D8%A7%D9%81%D9%8A%E2%80%AD/@33.5722815,36.4013103,17z/data=!3m1!4b1!4m6!3m5!1s0x1518efaf2eb33797:0x296082329d671ce!8m2!3d33.5722816!4d36.3964394!16s%2Fg%2F11qqlm02l7?authuser=0&entry=ttu',
                  phone: '0949613597',
                  image: 'images/sallon3.jpg',
                ),
              ),
              cards(
                'الوردة الدمشقية',
                'نسائي',
                'images/warde.jpg',
                UserPageCamera(
                  username: 'صالون الوردة الدمشقية',
                  about:
                  'حلاقة نسائية - قص - ميش - ستيشوار - بروتين - تجهيز عرائس - مكياج \n حجارية - بعد جامع الفوال ب 100 متر \n أرقام أخرى للتواصل: 0994379172  ',
                  location: 'https://www.google.com/maps/place/%D8%AC%D8%A7%D9%85%D8%B9+%D8%A7%D9%84%D9%81%D9%88%D8%A7%D9%84%E2%80%AD/@33.5778875,36.4030595,19.44z/data=!4m5!3m4!1s0x1518efa520e2a82b:0x6c2790fa1a971b7e!8m2!3d33.5774857!4d36.4028455?entry=ttu',
                  phone: '0940879746',
                  image: 'images/warde.jpg',
                ),
              ),
              cards(
                'صالون اليمان',
                'نسائي',
                'images/sallon1.jpg',
                UserPageCamera(
                  username: 'صالون اليمان',
                  about: 'تجميل السيدات - قص - ميش - صبغة - تجهيز عرائس',
                  location: 'https://www.google.com/maps/@33.5648507,36.4025202,18.34z?authuser=0&entry=ttu',
                  phone: '0936287247',
                  image: 'images/sallon1.jpg',
                ),
              ),
              cards(
                'صالون خبيرة التجميل',
                'نسائي',
                'images/sallon2.jpg',
                UserPageCamera(
                  username: 'صالون خبيرة التجميل',
                  about:
                      'العناية بالبشرة - خبيرة تجميل \n أرقام أخرى للتواصل: 0943939271 ',
                  location: 'https://www.google.com/maps/place/HCC2%2BGHW%D8%8C+%D8%AF%D9%88%D9%85%D8%A7%D8%8C+%D8%B3%D9%88%D8%B1%D9%8A%D8%A7%E2%80%AD/@33.5712612,36.4016785,19.96z/data=!4m14!1m7!3m6!1s0x1518efaf2eb33797:0x296082329d671ce!2z2KfZhNmF2LHZg9iyINin2YTYq9mC2KfZgdmK!8m2!3d33.5722816!4d36.3964394!16s%2Fg%2F11qqlm02l7!3m5!1s0x1518efa289230bd3:0x816d6950d13b55d7!8m2!3d33.5713599!4d36.4015311!16s%2Fg%2F11ptqm91lv?authuser=0&entry=ttu',
                  phone: '0995232743',
                  image: 'images/sallon2.jpg',
                ),
              ),
            ],
          ),
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
