import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/siteImporantUser.dart';
import 'package:untitled1/douma2/medical/decriptionMe/doctors.dart';
import 'package:untitled1/douma2/medical/decriptionMe/medical_store.dart';
import 'package:untitled1/douma2/medical/decriptionMe/phermacy.dart';
import 'package:untitled1/douma2/medical/medical.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstituteAndSchool extends StatefulWidget {
  @override
  _InstituteAndSchoolState createState() => _InstituteAndSchoolState();
}

class _InstituteAndSchoolState extends State<InstituteAndSchool>
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
        title: Text('المعاهد والمدارس'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 13),cards(
                'معهد التميز للمتفوقين ',
                'في دوما',
                'images/tamoz.jpg',
                UserPageCamera(
                  username: 'معهد التميز',
                  about: 'تميز في التربية إبداع في التعليم \n دورات للشهادتين الثانوية والإعدادية  \n ارقام أخرى للتواصل: 0994322322 ',
                  location:
                  'https://www.google.com/maps/@33.5717093,36.4091632,19.18z?authuser=0&entry=ttu',
                  phone: '0954416829',
                  image: 'images/tamoz.jpg',
                ),
              ),
              cards(
                'معهد الفارابي',
                'في دوما',
                'images/farabe.jpg',
                UserPageCamera(
                  username: 'معهد الفارابي',
                  about: 'للعلوم واللغات \n دورات للشهادتين الثانوية والإعدادية \n أرقام أخرى: 0963000145 - 09526266474 - 0993210618 ',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D8%A7%D9%84%D9%81%D8%A7%D8%B1%D8%A7%D8%A8%D9%8A+%D9%84%D9%84%D8%B9%D9%84%D9%88%D9%85+%D9%88%D8%A7%D9%84%D9%84%D8%BA%D8%A9%E2%80%AD/@33.575173,36.3978798,17z/data=!4m14!1m7!3m6!1s0x1518efd92dc4f485:0x6bdb5aaafb516620!2z2YXYudmH2K8g2KfZhNmB2KfYsdin2KjZig!8m2!3d33.5650894!4d36.3960237!16s%2Fg%2F11mw94vl_j!3m5!1s0x1518ef51033005f5:0x4328e0756e4dd57!8m2!3d33.5746189!4d36.3964381!16s%2Fg%2F11q4j5tt56?authuser=0&entry=ttu',
                  phone: '0930866072',
                  image: 'images/farabe.jpg',
                ),
              ),
              cards(
                'معهد النبراس',
                'في دوما',
                'images/nebras.jpg',
                UserPageCamera(
                  username: 'معهد النبراس',
                  about: 'علمي - أدبي - تاسع',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D8%A7%D9%84%D9%86%D8%A8%D8%B1%D8%A7%D8%B3%E2%80%AD/@33.575173,36.3978798,17z/data=!4m14!1m7!3m6!1s0x1518efd92dc4f485:0x6bdb5aaafb516620!2z2YXYudmH2K8g2KfZhNmB2KfYsdin2KjZig!8m2!3d33.5650894!4d36.3960237!16s%2Fg%2F11mw94vl_j!3m5!1s0x1518ef10f768c3b7:0xe84d14999a6169be!8m2!3d33.5746334!4d36.395616!16s%2Fg%2F11m_lkk_z_?authuser=0&entry=ttu',
                  phone: '0935209870',
                  image: 'images/nebras.jpg',
                ),
              ),
              cards(
                'معهد المجموعة العربية',
                'في دوما',
                'images/arabia.jpg',
                UserPageCamera(
                  username: 'معهد المجموعة العربية',
                  about: 'لتطوير المعلومات \n دورات للشهادتين الثانوية والإعدادية \n ارقام أخرى لتواصل: 0993387150 ',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D8%A7%D9%84%D9%85%D8%AC%D9%85%D9%88%D8%B9%D8%A9+%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A%D8%A9%E2%80%AD/@33.5708453,36.3966428,19.6z/data=!4m14!1m7!3m6!1s0x1518ef86e7c4424b:0x2cf971287e29d3ad!2z2YXYudmH2K8g2KPYrNmK2KfZhCDYp9mE2YXYrNiv!8m2!3d33.5698836!4d36.3958925!16s%2Fg%2F11mtjrrl5p!3m5!1s0x1518ef9f12d46203:0x8e1413f37daa21d6!8m2!3d33.5709005!4d36.3966583!16s%2Fg%2F11c7021xgy?authuser=0&entry=ttu',
                  phone: '0993325700',
                  image: 'images/arabia.jpg',
                ),
              ),
              cards(
                'معهد أجيال المجد',
                'في دوما',
                'images/AjialMajed.jpg',
                UserPageCamera(
                  username: 'معهد أجيال المجد',
                  about: 'دورات للشهادتين الثانوية والإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D8%A3%D8%AC%D9%8A%D8%A7%D9%84+%D8%A7%D9%84%D9%85%D8%AC%D8%AF%E2%80%AD/@33.5700331,36.3979156,17.78z/data=!4m6!3m5!1s0x1518ef86e7c4424b:0x2cf971287e29d3ad!8m2!3d33.5698836!4d36.3958925!16s%2Fg%2F11mtjrrl5p?authuser=0&entry=ttu',
                  phone: '0932791323',
                  image: 'images/AjialMajed.jpg',
                ),
              ),
              cards(
                'معهد كنوز المستقبل',
                'في دوما',
                'images/future.jpg',
                UserPageCamera(
                  username: 'معهد كنوز المستقبل',
                  about: 'للعلوم واللغات \n دورات للشهادتين الثانوية والإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D9%83%D9%86%D9%88%D8%B2+%D8%A7%D9%84%D9%85%D8%B3%D8%AA%D9%82%D8%A8%D9%84%E2%80%AD/@33.5700897,36.4107168,18.04z/data=!4m6!3m5!1s0x1518eff9dc39a005:0xaf7814db7569ca18!8m2!3d33.5704437!4d36.4093998!16s%2Fg%2F11q1tqzvtn?authuser=0&entry=ttu',
                  phone: '0935948193',
                  image: 'images/future.jpg',
                ),
              ),
              cards(
                'معهد البدر',
                'في دوما',
                'images/badar.jpg',
                UserPageCamera(
                  username: 'معهد البدر',
                  about: 'للعلوم واللغات \n دورات للشهادتين الثانوية والإعدادية \n أرقام أخرى للتواصل: 0986614989 ',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%A8%D8%AF%D8%B1+%D9%84%D9%84%D8%A3%D9%86%D8%B4%D8%B7%D8%A9+%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85%D9%8A%D8%A9%E2%80%AD/@33.5658753,36.3965818,20.25z/data=!4m6!3m5!1s0x1518ef47bebe91f9:0xc48977747ad692fa!8m2!3d33.565987!4d36.3964858!16s%2Fg%2F11hzpc1bgm?entry=ttu',
                  phone: '0944796438',
                  image: 'images/badar.jpg',
                ),
              ),
              cards(
                'معهد النور',
                'في دوما',
                'images/norInstitute.jpg',
                UserPageCamera(
                  username: 'معهد النور',
                  about: 'للعلوم واللغات \n دورات للشهادتين الثانوية والإعدادية \n أرقام أخرى: 0115712060 ',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D9%86%D9%88%D8%B1+%D9%84%D9%84%D8%BA%D8%A7%D8%AA+%D9%88+%D8%A7%D9%84%D9%83%D9%88%D9%85%D8%A8%D9%8A%D9%88%D8%AA%D8%B1%E2%80%AD/@33.5680924,36.3963613,20.65z/data=!4m14!1m7!3m6!1s0x1518ef86e7c4424b:0x2cf971287e29d3ad!2z2YXYudmH2K8g2KPYrNmK2KfZhCDYp9mE2YXYrNiv!8m2!3d33.5698836!4d36.3958925!16s%2Fg%2F11mtjrrl5p!3m5!1s0x1518ef9e85985d31:0xc2e3955d9ff8afb9!8m2!3d33.5679993!4d36.3963269!16s%2Fg%2F1tpb8bd5?authuser=0&entry=ttu',
                  phone: '0981539081',
                  image: 'images/norInstitute.jpg',
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
              cards(
                'مدرسة أحمد الشامي',
                'في دوما',
                'images/school.jpg',
                UserPageCamera(
                  username: 'مدرسة أحمد الشامي',
                  about: 'الشرعية للبنات \n أرقام أخرى للتواصل: 0115710300 ',
                  location:
                  'https://www.google.com/maps/place/%D8%AB%D8%A7%D9%86%D9%88%D9%8A%D8%A9+%D8%A7%D9%84%D8%B4%D9%8A%D8%AE+%D8%A3%D8%AD%D9%85%D8%AF+%D8%A7%D9%84%D8%B4%D8%A7%D9%85%D9%8A%E2%80%AD/@33.5714448,36.393452,18.04z/data=!4m6!3m5!1s0x1518effc0e571a45:0x18d0c5d0ed2c4283!8m2!3d33.5719134!4d36.3935902!16s%2Fg%2F11j8pds58h?authuser=0&entry=ttu',
                  phone: '0115710072',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة عبد القادر بدران',
                'في دوما',
                'images/school.jpg',
                UserPageCamera(
                  username: 'مدرسة عبد القادر بدران',
                  about: 'الشرعية للبنين',
                  location:
                  'https://www.google.com/maps/place/%D8%AB%D8%A7%D9%86%D9%88%D9%8A%D8%A9+%D8%A7%D9%84%D8%B4%D9%8A%D8%AE+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D9%82%D8%A7%D8%AF%D8%B1+%D8%A8%D8%AF%D8%A7%D9%86+%D8%A7%D9%84%D8%B4%D8%B1%D8%B9%D9%8A%D8%A9+%D9%84%D9%84%D8%A8%D9%86%D9%8A%D9%86+%D9%81%D9%8A+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5649372,36.392312,20.14z/data=!4m15!1m8!3m7!1s0x1518ef77ed7618f5:0x548d2549fcf2dcf2!2z2KzYp9mF2Lkg2KfZhNiq2YjYrdmK2K_YjCDYr9mI2YXYp9iMINiz2YjYsdmK2Kc!3b1!8m2!3d33.5647827!4d36.3919087!16s%2Fg%2F12jmjz846!3m5!1s0x1518ef77ac48abfd:0x46833d404723dd05!8m2!3d33.5648137!4d36.3920225!16s%2Fg%2F11t9c9fv2h?authuser=0&entry=ttu',
                  phone: '0958986376',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة المتفوقين',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة المتفوقين',
                  about: 'للمرحلة الثانوية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%A7%D9%84%D9%85%D8%AA%D9%81%D9%88%D9%82%D9%8A%D9%86%E2%80%AD/@33.5742065,36.41595,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة حسن البصري',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة حسن البصري',
                  about: 'للمرحلة الإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%A7%D9%84%D8%AD%D8%B3%D9%86+%D8%A7%D9%84%D8%A8%D8%B5%D8%B1%D9%8A%E2%80%AD/@33.5686284,36.4062082,17z/data=!4m14!1m7!3m6!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!2z2YXYr9ix2LPYqSDYp9mE2YXYqtmB2YjZgtmK2YY!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8!3m5!1s0x1518ef990f84ecbd:0xcd4b9cb5fb418d8c!8m2!3d33.5677902!4d36.4007219!16s%2Fg%2F11gbxffvgx?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة ضرار ابن الأزور',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة ضرار ابن الأزور',
                  about: 'للمرحلة الإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%B6%D8%B1%D8%A7%D8%B1+%D8%A8%D9%86+%D8%A7%D9%84%D8%A7%D8%B2%D9%88%D8%B1%E2%80%AD/@33.5656872,36.3936352,19.6z/data=!4m14!1m7!3m6!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!2z2YXYr9ix2LPYqSDYp9mE2YXYqtmB2YjZgtmK2YY!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8!3m5!1s0x1518ef9d77c441df:0x36af73a1300ff842!8m2!3d33.5657546!4d36.3938687!16s%2Fg%2F1hd_2_vwc?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة غازي',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة غازي',
                  about: 'للمرحلة الإعدادية والثانوية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%A8%D9%86%D8%A7%D8%AA+%D8%AF%D9%88%D9%85%D8%A7+(+%D8%BA%D8%A7%D8%B2%D9%8A)%E2%80%AD/@33.5680194,36.3978135,19.6z/data=!4m14!1m7!3m6!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!2z2YXYr9ix2LPYqSDYp9mE2YXYqtmB2YjZgtmK2YY!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8!3m5!1s0x1518ef36569f6c43:0x2f86f601d8b49abe!8m2!3d33.5679654!4d36.3973293!16s%2Fg%2F11qnt2k2v1?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة الهاشمية',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة الهاشمية',
                  about: 'للمرحلة الإعدادية والثانوية',
                  location:
                  'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%A7%D9%84%D9%87%D8%A7%D8%B4%D9%85%D9%8A%D8%A9%E2%80%AD/@33.5719091,36.4118302,17z/data=!4m14!1m7!3m6!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!2z2YXYr9ix2LPYqSDYp9mE2YXYqtmB2YjZgtmK2YY!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8!3m5!1s0x1518efbebdcfed37:0xfcc0c59811223a14!8m2!3d33.5713844!4d36.4103429!16s%2Fg%2F11gzw0pd9?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة دوما الرابعة',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة دوما الرابعة',
                  about: 'للمرحلة الإبتدائية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%AF%D9%88%D9%85%D8%A7+%D8%A7%D9%84%D8%B1%D8%A7%D8%A8%D8%B9%D8%A9%E2%80%AD/@33.5719091,36.4118302,17z/data=!4m14!1m7!3m6!1s0x1518ef5179423b5f:0x386d9d0d7a7774f9!2z2YXYr9ix2LPYqSDYp9mE2YXYqtmB2YjZgtmK2YY!8m2!3d33.5742065!4d36.4133751!16s%2Fg%2F11lgsgp6p8!3m5!1s0x1518efffa73b9b91:0xd964e6753021a744!8m2!3d33.5718303!4d36.4091589!16s%2Fg%2F11ks2nhfn6?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة دوما الثانية',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة دوما الثانية',
                  about: 'للمرحلة الإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%AF%D9%88%D9%85%D8%A7+%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9+%D8%A8%D9%86%D9%8A%D9%86%E2%80%AD/@33.5729622,36.4099229,18.56z/data=!4m6!3m5!1s0x1518efc5d2a73f35:0x3ac144b57e3f0f2b!8m2!3d33.5729353!4d36.4094572!16s%2Fg%2F11q3tcvj1y?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'عبد الحكيم القصير',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'عبد الحكيم القصير',
                  about: 'للمرحلة الإبتدائية والإعدادية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%AD%D9%83%D9%8A%D9%85+%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1%E2%80%AD/@33.5652927,36.3989892,17.78z/data=!4m14!1m7!3m6!1s0x1518efc5d2a73f35:0x3ac144b57e3f0f2b!2z2YXYr9ix2LPYqSDYr9mI2YXYpyDYp9mE2KvYp9mG2YrYqSDYqNmG2YrZhg!8m2!3d33.5729353!4d36.4094572!16s%2Fg%2F11q3tcvj1y!3m5!1s0x1518efe301c87c1b:0x4a1168cbe2b5634d!8m2!3d33.5654937!4d36.3974332!16s%2Fg%2F11j37lg992?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة سيف الدولة',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة سيف الدولة',
                  about: 'للمرحلة الإبتدائية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%B3%D9%8A%D9%81+%D8%A7%D9%84%D8%AF%D9%88%D9%84%D8%A9+%D8%A7%D9%84%D8%AD%D9%85%D8%AF%D8%A7%D9%86%D9%8A%E2%80%AD/@33.5751828,36.4039473,19.6z/data=!4m14!1m7!3m6!1s0x1518efc5d2a73f35:0x3ac144b57e3f0f2b!2z2YXYr9ix2LPYqSDYr9mI2YXYpyDYp9mE2KvYp9mG2YrYqSDYqNmG2YrZhg!8m2!3d33.5729353!4d36.4094572!16s%2Fg%2F11q3tcvj1y!3m5!1s0x1518efbcc9ccf99f:0x74d0a2d6381f2df!8m2!3d33.5753558!4d36.4041276!16s%2Fg%2F11fszjq7gz?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة تشرين',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة تشرين',
                  about: 'للمرحلة الإعدادية والثانوية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D8%AA%D8%B4%D8%B1%D9%8A%D9%86%E2%80%AD/@33.5750181,36.4049249,19.6z/data=!4m14!1m7!3m6!1s0x1518efc5d2a73f35:0x3ac144b57e3f0f2b!2z2YXYr9ix2LPYqSDYr9mI2YXYpyDYp9mE2KvYp9mG2YrYqSDYqNmG2YrZhg!8m2!3d33.5729353!4d36.4094572!16s%2Fg%2F11q3tcvj1y!3m5!1s0x1518efbb455d39fd:0x11b7c3cc2285d9ea!8m2!3d33.5750454!4d36.4046792!16s%2Fg%2F11f24x0lrv?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
                ),
              ),
              cards(
                'مدرسة فاطمة الزهراء',
                'في دوما',
                'images/school.jpg',
                UserSiteCamera(
                  username: 'مدرسة فاطمة الزهراء',
                  about: 'للمرحلة الإبتدائية',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9+%D9%81%D8%A7%D8%B7%D9%85%D8%A9+%D8%A7%D9%84%D8%B2%D9%87%D8%B1%D8%A7%D8%A1%E2%80%AD/@33.5661423,36.3960697,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef9d819ba1c3:0x40438cfffa4f164c!8m2!3d33.5661423!4d36.3934948!16s%2Fg%2F11cs6kqpyz?authuser=0&entry=ttu',
                  image: 'images/school.jpg',
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
