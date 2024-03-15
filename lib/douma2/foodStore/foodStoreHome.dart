import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/locationUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodStore extends StatefulWidget {
  @override
  _FoodStoreState createState() => _FoodStoreState();
}

class _FoodStoreState extends State<FoodStore> with SingleTickerProviderStateMixin {
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
        title: Text('المحلات الغذائية'),
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
                'العائلة',
                'خدمة توصيل',
                Icons.person,
                UserPage(
                  username: 'سوبر ماركت العائلة',
                  about:
                  'ألبان - أجبان - دخان - عصائر - مواد غذائية - منظفات \n خدمة توصيل على مدار 24 ساعة ',
                  phoneNumber: '0940310033',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%8A%D9%86%D9%8A+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A7%D9%84%D8%B9%D8%A7%D8%A6%D9%84%D8%A9%E2%80%AD/@33.5695235,36.3975066,18.35z/data=!4m14!1m7!3m6!1s0x1518efff12075d4f:0x2915b798636d78a9!2z2YXZitmG2Yog2YXYp9ix2YPYqiDYp9mE2LnYp9im2YTYqQ!8m2!3d33.5696977!4d36.3977744!16s%2Fg%2F11v5z8639h!3m5!1s0x1518efff12075d4f:0x2915b798636d78a9!8m2!3d33.5696977!4d36.3977744!16s%2Fg%2F11v5z8639h?entry=ttu',
                ),
              ),
              cards(
                'الأميرة',
                'خدمة توصيل',
                Icons.person,
                UserPage(
                  username: 'سوبر ماركت الأميرة',
                  about:
                  'ألبان - أجبان - دخان - عصائر - مواد غذائية - معلبات - موالح - يوجد توصيل مجانا \n خدمة توصيل على مدار 24 ساعة  \n أرقام أخرى للتواصل: 0941811591 ',
                  phoneNumber: '0993790264',
                  location: 'https://www.google.com/maps/@33.5750399,36.4094608,21z?entry=ttu',
                ),
              ),
              cards(
                'الملك',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'سوبر ماركت الملك',
                  about:
                  'ألبان - أجبان - دخان - عصائر - مواد غذائية - منظفات',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D8%A8%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%A9+%D8%A7%D9%84%D9%85%D9%84%D9%83%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef0447565ce9:0x800799124be82379!8m2!3d33.57224!4d36.399327!15sChLYs9mI2KjYsdmF2KfYsdmD2KqSAQtzdXBlcm1hcmtldOABAA!16s%2Fg%2F11sk7w8t1k?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو أسامة',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'ماركت أبو أسامة',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A3%D8%A8%D9%88+%D8%A3%D8%B3%D8%A7%D9%85%D8%A9%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef320eeedd83:0x10121c984da9ffd0!8m2!3d33.5714919!4d36.3927662!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11rvfzwrvb?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عربش',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'غذائيات عربش',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%BA%D8%B0%D8%A7%D8%A6%D9%8A%D8%A7%D8%AA+%D8%B9%D8%B1%D8%A8%D8%B4%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef554f8fd0cf:0xa34f8483a0dcaf29!8m2!3d33.573555!4d36.396562!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11shhzhkm_?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'صحة و عافية',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'صحة وعافية',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D8%A8%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%B5%D8%AD%D8%A9+%D9%88+%D8%B9%D8%A7%D9%81%D9%8A%D8%A9%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef43dd51169d:0xf7e4cb882435954f!8m2!3d33.5702201!4d36.3965689!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11j97cr5gt?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ليان',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'ميني ماركت',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%8A%D9%86%D9%8A+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D9%84%D9%8A%D8%A7%D9%86%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef76a827f6c3:0x22c97dc006f96c45!8m2!3d33.5686993!4d36.3957531!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11kx789lss?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'زهرة',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'سوبر ماركت زهرة',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%BA%D8%B0%D8%A7%D8%A6%D9%8A%D8%A7%D8%AA+%D8%A7%D8%A8%D9%88+%D9%85%D9%86%D8%B2%D8%B1+%D8%B2%D9%87%D8%B1%D8%A9%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518efd5cd5074cf:0x8268394cdf8efebb!8m2!3d33.5677174!4d36.4021127!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11s1tvjjb8?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'النعمان',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'سوبر ماركت النعمان',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D8%A8%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A7%D9%84%D9%86%D8%B9%D9%85%D8%A7%D9%86%E2%80%AD/@33.57224,36.4088542,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef9dfa8b5ae7:0x2be629e80547be3f!8m2!3d33.5672832!4d36.3947003!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11jzpj0qvl?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شيخ النجار',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'سوبر ماركت شيخ النجار',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D8%A8%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%B4%D9%8A%D8%AE+%D8%A7%D9%84%D9%86%D8%AC%D8%A7%D8%B1%E2%80%AD/@33.5710759,36.4164621,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518efd6e740b257:0xa3df1a5048de54c1!8m2!3d33.5710759!4d36.4069349!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11np31mq9h?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عيبور',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'غذائيات أبو راتب عيبور وأولاده',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%BA%D8%B0%D8%A7%D8%A6%D9%8A%D8%A7%D8%AA+%D8%A3%D8%A8%D9%88+%D8%B1%D8%A7%D8%AA%D8%A8+%D8%B9%D9%8A%D8%A8%D9%88%D8%B1+%D9%88%D8%A3%D9%88%D9%84%D8%A7%D8%AF%D9%87%E2%80%AD/@33.5710759,36.4164621,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef62a3d849f9:0x1ade69dec2b0a7c8!8m2!3d33.5684912!4d36.4026997!15sChLYs9mI2KjYsdmF2KfYsdmD2KqSAQtzdXBlcm1hcmtldOABAA!16s%2Fg%2F11jyz412ns?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'خبية',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'بقالية خبية',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%A8%D9%82%D8%A7%D9%84%D9%8A%D8%A9+%D8%AE%D8%A8%D9%8A%D8%A9%E2%80%AD/@33.5733884,36.4064963,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef9fbf4027df:0x3621dbaabad87ee4!8m2!3d33.5733884!4d36.3969691!15sChLYs9mI2KjYsdmF2KfYsdmD2KqSAQtzdXBlcm1hcmtldOABAA!16s%2Fg%2F11vdgw62lw?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الفتح',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'سوبر ماركت الفتح',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D8%A8%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A7%D9%84%D9%81%D8%AA%D8%AD%E2%80%AD/@33.5733884,36.4064963,16z/data=!4m10!1m2!2m1!1z2LPZiNio2LHZhdin2LHZg9iq!3m6!1s0x1518ef6a8f7d956f:0x73f2e3da46290612!8m2!3d33.5689709!4d36.3949838!15sChLYs9mI2KjYsdmF2KfYsdmD2KpaFCIS2LPZiNio2LHZhdin2LHZg9iqkgENZ3JvY2VyeV9zdG9yZeABAA!16s%2Fg%2F11r617hybn?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الشيخ عرابي',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'ميني ماركت الشيخ عرابي',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%8A%D9%86%D9%8A+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%B4%D9%8A%D8%AE+%D8%B9%D8%B1%D8%A7%D8%A8%D9%8A%E2%80%AD/@33.5733882,36.4064963,16z/data=!4m10!1m2!2m1!1z2YXYp9ix2YPYqg!3m6!1s0x1518efeebc0b3b6f:0x369dcfe9f0819870!8m2!3d33.5693184!4d36.3969673!15sCgrZhdin2LHZg9iqWgwiCtmF2KfYsdmD2KqSAQ1ncm9jZXJ5X3N0b3Jl4AEA!16s%2Fg%2F11rvj8fpcq?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'البركة',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'ميني ماركت البركة',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%8A%D9%86%D9%8A+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A7%D9%84%D8%A8%D8%B1%D9%83%D8%A9%E2%80%AD/@33.5660997,36.4052038,16z/data=!4m11!1m3!2m2!1z2YXYp9ix2YPYqg!6e6!3m6!1s0x1518eff22f8e41dd:0x34c26a453ad474d9!8m2!3d33.5660997!4d36.3956766!15sCgrZhdin2LHZg9iqWgwiCtmF2KfYsdmD2KqSAQtzdXBlcm1hcmtldOABAA!16s%2Fg%2F11s84l2_t6?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'حلاوة',
                'في دوما',
                Icons.person,
                LocationUser(
                  username: 'ماركت حلاوة',
                  about:
                  'سوبر ماركت - كل ما تحتاجه العائلة',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%AD%D9%84%D8%A7%D9%88%D8%A9%E2%80%AD/@33.5634565,36.4006547,16.96z/data=!4m11!1m3!2m2!1z2YXYp9ix2YPYqg!6e6!3m6!1s0x1518ef69743b7aa7:0x378720b89087145c!8m2!3d33.5630995!4d36.3962389!15sCgrZhdin2LHZg9iqWgwiCtmF2KfYsdmD2KqSAQtzdXBlcm1hcmtldOABAA!16s%2Fg%2F11sb7983vj?authuser=0&entry=ttu',
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
