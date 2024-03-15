import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EatAndResturant extends StatefulWidget {
  @override
  _EatAndResturantState createState() => _EatAndResturantState();
}

class _EatAndResturantState extends State<EatAndResturant>
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
        title: Text('المأكولات والمطاعم'),
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
                'شاورما الخير',
                'شاورما كريسبي بطاطا',
                'images/eatKhir.jpg',
                UserPageCamera(
                  username: 'شاورما الخير',
                  about: 'شاورما - كريسبي - بطاطا \n خدمة توصيل ',
                  location:
                      'https://www.google.com/maps/place/%D8%B4%D8%A7%D9%88%D8%B1%D9%85%D8%A7+%D8%A7%D9%84%D8%AE%D9%8A%D8%B1%E2%80%AD/@33.5684267,36.405886,16z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518eff5c372ffe1:0x718ff8022b261f2b!8m2!3d33.5684267!4d36.3963588!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11qng9q_dt?authuser=0&entry=ttu',
                  phone: '0938038295',
                  image: 'images/eatKhir.jpg',
                ),
              ),
              cards(
                'مطعم إنجوي',
                'شاورما كريسبي بطاطا',
                'images/meal2.jpg',
                UserPageCamera(
                  username: 'إنجوي',
                  about:
                      'شاورما - كريسبي - بطاطا - عصير وكوكتيلات - سلطات فواكي - بروستد - سندويش غربي \n أرقام أخرى للتواصل: 0968980685 - 0933829131 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D8%A5%D9%86%D8%AC%D9%88%D9%8A%E2%80%AD/@33.5684267,36.405886,16z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518ef882e765b4d:0xcb577fd0a861e40c!8m2!3d33.571028!4d36.3972857!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSARRmYXN0X2Zvb2RfcmVzdGF1cmFudOABAA!16s%2Fg%2F11nxvg_5r3?authuser=0&entry=ttu',
                  phone: '0115712626',
                  image: 'images/meal2.jpg',
                ),
              ),
              cards(
                'السعادة',
                'شاورما كريسبي بطاطا',
                'images/ear22.jpg',
                UserPageCamera(
                  username: 'السعادة',
                  about: 'شاورما - كريسبي - بطاطا',
                  location:
                      'https://www.google.com/maps/search/%D9%85%D8%B7%D8%A7%D8%B9%D9%85%E2%80%AD/@33.5739474,36.4084348,18.18z/data=!4m2!2m1!6e5?authuser=0&entry=ttu',
                  phone: '0936666142',
                  image: 'images/ear22.jpg',
                ),
              ),
              cards(
                'شاورما العوافي',
                'شاورما كريسبي بطاطا',
                'images/meal21.jpg',
                UserPageCamera(
                  username: 'العوافي',
                  about:
                      'شاورما - كريسبي - بطاطا \n أرقام أخرى للتواصل: 0933250785 ',
                  location:
                      'https://www.google.com/maps/place/%D8%B4%D8%A7%D9%88%D8%B1%D9%85%D8%A7+%D8%A7%D9%84%D8%B9%D9%88%D8%A7%D9%81%D9%8A%E2%80%AD/@33.5711808,36.412999,16z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518efbd01232515:0x1f9c276a7bbe1d2f!8m2!3d33.571096!4d36.4064611!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11cp5z7px2?authuser=0&entry=ttu',
                  phone: '0933250785',
                  image: 'images/meal21.jpg',
                ),
              ),
              cards(
                'فروج الأمير',
                'مشوي بروستد مسحب',
                'images/meal11.jpg',
                UserPageCamera(
                  username: 'فروج الأمير',
                  about:
                      'فروج بروستد - مسحب  - مشوي على الفحم - وجبات  - سندويش',
                  location:
                      'https://www.google.com/maps/place/%D9%81%D8%B1%D9%88%D8%AC+%D8%A7%D9%84%D8%A3%D9%85%D9%8A%D8%B1+%D8%A7%D9%84%D9%81%D8%B1%D8%B9+1%E2%80%AD/@33.5675337,36.3984672,19z/data=!4m11!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m6!1s0x1518efc4a5e7cd1f:0x4768bfd68f8c1899!8m2!3d33.5675337!4d36.3972763!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSARJjaGlja2VuX3Jlc3RhdXJhbnTgAQA!16s%2Fg%2F11ptqgd9q0?authuser=0&entry=ttu',
                  phone: '0940422400',
                  image: 'images/meal11.jpg',
                ),
              ),
              cards(
                'فروج النعمان',
                'فروج شاورما كريسبي',
                'images/meal1.jpg',
                UserPageCamera(
                  username: 'فروج النعمان',
                  about: 'بروستد - مشوي - شاورما - كريسبي - بطاطا - خدمة توصيل',
                  location:
                      'https://www.google.com/maps/place/%D9%81%D8%B1%D9%88%D8%AC+%D9%88+%D8%B4%D8%A7%D9%88%D8%B1%D9%85%D8%A7+%D8%A7%D9%84%D9%86%D8%B9%D9%85%D8%A7%D9%86+%D8%A7%D9%84%D9%81%D8%B1%D8%B9+%D9%A2%E2%80%AD/@33.5693391,36.402641,19z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518ef5104e37321:0x8b888d10bc914c!8m2!3d33.5693391!4d36.401987!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQ1tZWFsX3Rha2Vhd2F54AEA!16s%2Fg%2F11qndnhjy3?authuser=0&entry=ttu',
                  phone: '0933322251',
                  image: 'images/meal1.jpg',
                ),
              ),
              cards(
                'مطعم عبد العزيز',
                'فلافل بطاطا مسبحة',
                'images/flafel.jpg',
                UserPageCamera(
                  username: 'مطعم عبد العزيز',
                  about:
                      'حمص - فول - مسبحة - فتة - مخلل - فلافل - بطاطا \n أرقام أخرى للتواصل: 0115713120 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2%E2%80%AD/@33.5727724,36.4189033,16z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518ef9bee25b26f:0xd5dd34865836d95b!8m2!3d33.5727724!4d36.4093761!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSARRmYXN0X2Zvb2RfcmVzdGF1cmFudOABAA!16s%2Fg%2F11q91t0d1w?authuser=0&entry=ttu',
                  phone: '0953322463',
                  image: 'images/flafel.jpg',
                ),
              ),
              cards(
                'مطبخ ومندي الصوفي',
                'مندي',
                'images/mande.jpg',
                UserPageCamera(
                  username: 'مطبخ ومندي الصوفي',
                  about:
                      'أفخر أنواع المندي - نستقبل كافة الطلبات \n أرقام أخرى للتواصل: 0981569832 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%A8%D8%AE+%D9%88+%D9%85%D9%86%D8%AF%D9%8A+%D8%A7%D9%84%D8%B5%D9%88%D9%81%D9%8A%E2%80%AD/@33.5684743,36.3975472,19z/data=!4m11!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m6!1s0x1518ef420b456ae5:0x38c62c05f9896a5c!8m2!3d33.5684743!4d36.3963563!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11sd929_vt?authuser=0&entry=ttu',
                  phone: '0934086573',
                  image: 'images/mande.jpg',
                ),
              ),
              cards(
                'أبو سليم أحميد',
                'طباخ متنقل',
                'images/mande.jpg',
                UserPagePhone(
                  username: 'أبو سليم أحميد',
                  about: 'طبخ لكافة المناسبات - طباخ متنقل \n أرقام أخرى للتواصل: 0954170207 ',
                  phoneNumber: '0981271832',
                ),
              ),
              cards(
                'مطعم شيخ بكري',
                'فلافل بطاطا',
                'images/flafelSandwish.jpg',
                UserPageCamera(
                  username: 'مطعم شيخ بكري',
                  about: 'سندويش - فلافل - بطاطا',
                  location:
                      'https://www.google.com/maps/place/%D9%81%D9%84%D8%A7%D9%81%D9%84+%D8%A7%D9%84%D8%B4%D9%8A%D8%AE+%D8%A8%D9%83%D8%B1%D9%8A%E2%80%AD/@33.5671627,36.3971877,19z/data=!4m11!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m6!1s0x1518ef0f84820f79:0xb78ff7d6819a84da!8m2!3d33.5671627!4d36.3959968!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11rt_v51sy?authuser=0&entry=ttu',
                  phone: '0988528474',
                  image: 'images/flafelSandwish.jpg',
                ),
              ),
              cards(
                'مطعم كرم دوما',
                'فلافل بطاطا',
                'images/flafelSandwish.jpg',
                UserPageCamera(
                  username: 'مطعم كرم دوما',
                  about:
                      'سندويش - فلافل - بطاطا \n أرقام أخرى للتواصل: 0993268452 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D9%83%D8%B1%D9%85+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5685173,36.4058714,16z/data=!4m11!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m6!1s0x1518efa3705af363:0x14bf5b78c3100b71!8m2!3d33.5699884!4d36.3964696!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11tj9lc_ld?authuser=0&entry=ttu',
                  phone: '0945960093',
                  image: 'images/flafelSandwish.jpg',
                ),
              ),
              cards(
                'مطعم طيبة',
                'فلافل بطاطا مسبحة',
                'images/flafel.jpg',
                UserPageCamera(
                  username: 'مطعم طيبة',
                  about: 'فلافل - مسبحة - حمص - بطاطا \n خدمة توصيل ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D8%B7%D9%8A%D8%A8%D8%A9%E2%80%AD/@33.5685173,36.4058714,16z/data=!4m10!1m2!2m1!1z2YXYt9in2LnZhQ!3m6!1s0x1518ef0ccb2c0d43:0x6a0a11eebee3ceae!8m2!3d33.5685173!4d36.3963442!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSARRicmVha2Zhc3RfcmVzdGF1cmFudOABAA!16s%2Fg%2F11t9ml_f39?authuser=0&entry=ttu',
                  phone: '0993805684',
                  image: 'images/flafel.jpg',
                ),
              ),
              cards(
                'مطعم زين الشام',
                'فلافل بطاطا',
                'images/flafelSandwish.jpg',
                UserPageCamera(
                  username: 'مطعم زين الشام',
                  about: 'فلافل - بطاطا - حمص - مسبحة',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%A3%D9%83%D9%88%D9%84%D8%A7%D8%AA+%D8%B2%D9%8A%D9%86+%D8%A7%D9%84%D8%B4%D8%A7%D9%85%E2%80%AD/@33.568729,36.3976005,19z/data=!4m11!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m6!1s0x1518ef30ad107c11:0x98a5e6eac0b5ed5!8m2!3d33.568729!4d36.3964096!15sCgrZhdi32KfYudmFWgwiCtmF2LfYp9i52YWSAQpyZXN0YXVyYW504AEA!16s%2Fg%2F11q46l6cyb?authuser=0&entry=ttu',
                  phone: '0936399773',
                  image: 'images/flafelSandwish.jpg',
                ),
              ),
              cards(
                'فروج القصير',
                'ني - مقطع',
                'images/farooj.jpg',
                UserPageCamera(
                  username: 'فروج القصير',
                  about:
                      'ني - مقطع - وردات - دبوس - فخاد - صدر \n أرقام أخرى للتواصل: 0115710474 ',
                  location:
                      'https://www.google.com/maps/place/%D9%81%D8%B1%D9%88%D8%AC+%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1%E2%80%AD/@33.571524,36.4058378,18.55z/data=!4m6!3m5!1s0x1518eff5d0e1cbab:0x11772008539c96ac!8m2!3d33.572172!4d36.4053898!16s%2Fg%2F11t5y9wxgc?entry=ttu',
                  phone: '0933570699',
                  image: 'images/farooj.jpg',
                ),
              ),
              cards(
                'مأكولات القوتلي',
                'فلافل بطاطا',
                'images/flafelSandwish.jpg',
                UserPageCamera(
                  username: 'مطعم مأكولات القوتلي',
                  about:
                      'فلافل عربي - بطاطا - حمص - مسبحة - فول - فتات - متبل - خدمة توصيل طلبات  \n أرقام أخرى للتواصل: 0967162442 ',
                  location:
                      'https://www.google.com/maps/place/%D8%AC%D8%A7%D9%85%D8%B9+%D8%A7%D9%84%D8%A8%D8%BA%D8%AF%D8%A7%D8%AF%D9%8A+%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%8A%E2%80%AD/@33.5663448,36.3961016,19.7z/data=!4m6!3m5!1s0x1518ef9c4bd760b7:0xf754e6fbb2711e50!8m2!3d33.566146!4d36.3961652!16s%2Fg%2F11c2kjy9bj?entry=ttu',
                  phone: '0981537052',
                  image: 'images/flafelSandwish.jpg',
                ),
              ),
              cards(
                'أبو محمد صلاح',
                'بوظة وحلويات',
                'images/salah.jpg',
                UserPageCamera(
                  username: 'أبو محمد صلاح',
                  about:
                      'بوظة - كاسيتا - بيتفور - ليالي - برازق - غريبة \n مع استعداد تام لجمسع المناسبات والأفراح يوجد توصيل مجانا \n أرقام أخرى للتواصل: 0954759053  ',
                  location:
                      'https://www.google.com/maps/place/%D8%A3%D8%A8%D9%88+%D9%85%D8%AD%D9%85%D8%AF+%D8%B5%D9%84%D8%A7%D8%AD+%D9%84%D9%84%D8%A8%D9%88%D8%B8%D8%A9%E2%80%AD/@33.5706763,36.3971426,20z/data=!4m10!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m5!1s0x1518ef828e48d5c5:0xfc5f50a65a1a611c!8m2!3d33.5706836!4d36.3965744!16s%2Fg%2F11mvg5lg02?authuser=0&entry=ttu',
                  phone: '0988211174',
                  image: 'images/salah.jpg',
                ),
              ),
              cards(
                'بوابة دوما',
                'معجنات',
                'images/muaganat.jpg',
                UserPageCamera(
                  username: 'بوابة دوما',
                  about: 'معجنات - بيتزا - خدمة توصيل',
                  location:
                      'https://www.google.com/maps/place/%D8%A8%D9%8A%D8%AA%D8%B2%D8%A7+%D9%88%D9%85%D8%B9%D8%AC%D9%86%D8%A7%D8%AA+%D8%A7%D9%84%D8%A8%D9%88%D8%A7%D8%A8%D8%A9+%D9%81%D8%B1%D8%B9+%D9%A2%E2%80%AD/@33.5709201,36.4066123,20z/data=!4m10!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m5!1s0x1518ef9a4cf78ef3:0x2df9e7d74d5de407!8m2!3d33.5709441!4d36.4063049!16s%2Fg%2F11p07ppstt?authuser=0&entry=ttu',
                  phone: '0946648816',
                  image: 'images/muaganat.jpg',
                ),
              ),
              cards(
                'معجنات القصير',
                'في دوما',
                'images/muaganat.jpg',
                UserPageCamera(
                  username: 'بيتزا ومعجنات القصير',
                  about: 'محمرة - جبنة - قشقوان - زعتر - برك - بيتزا',
                  location:
                      'https://www.google.com/maps/place/%D9%81%D8%B1%D9%88%D8%AC+%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1%E2%80%AD/@33.571524,36.4058378,18.55z/data=!4m6!3m5!1s0x1518eff5d0e1cbab:0x11772008539c96ac!8m2!3d33.572172!4d36.4053898!16s%2Fg%2F11t5y9wxgc?entry=ttu',
                  phone: '0958210447',
                  image: 'images/muaganat.jpg',
                ),
              ),
              cards(
                'بوابة دوما',
                'معجنات',
                'images/muaganat.jpg',
                UserPageCamera(
                  username: 'بوابة دوما',
                  about: 'معجنات - بيتزا - خدمة توصيل',
                  location:
                      'https://www.google.com/maps/place/%D8%A8%D9%8A%D8%AA%D8%B2%D8%A7+%D9%88%D9%85%D8%B9%D8%AC%D9%86%D8%A7%D8%AA+%D8%A7%D9%84%D8%A8%D9%88%D8%A7%D8%A8%D8%A9+%D9%81%D8%B1%D8%B9+%D9%A2%E2%80%AD/@33.5709201,36.4066123,20z/data=!4m10!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m5!1s0x1518ef9a4cf78ef3:0x2df9e7d74d5de407!8m2!3d33.5709441!4d36.4063049!16s%2Fg%2F11p07ppstt?authuser=0&entry=ttu',
                  phone: '0946648816',
                  image: 'images/muaganat.jpg',
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
